#include <QApplication>
#include <QNetworkAccessManager>
#include <QMessageBox>
#include <QNetworkReply>
#include <QFile>
#include <QSslKey>
#include <QProgressDialog>
#include <QInputDialog>
#include <QDir>
#include <QStandardPaths>
#include <QUrlQuery>
#include <QJsonDocument>
#include <QJsonObject>

#include "RemoteDatabase.h"
#include "version.h"
#include "Settings.h"
#include "sqlite.h"

RemoteDatabase::RemoteDatabase() :
    m_manager(new QNetworkAccessManager),
    m_progress(nullptr),
    m_dbLocal(nullptr)
{
    // Set up SSL configuration
    m_sslConfiguration = QSslConfiguration::defaultConfiguration();
    m_sslConfiguration.setPeerVerifyMode(QSslSocket::VerifyPeer);

    // Load CA certs from resource file
    QDir dirCaCerts(":/certs");
    QStringList caCertsList = dirCaCerts.entryList();
    QList<QSslCertificate> caCerts;
    foreach(const QString& caCertName, caCertsList)
        caCerts += QSslCertificate::fromPath(":/certs/" + caCertName);
    m_sslConfiguration.setCaCertificates(caCerts);

    // Load settings and set up some more stuff while doing so
    reloadSettings();

    // Set up signals
    connect(m_manager, &QNetworkAccessManager::finished, this, &RemoteDatabase::gotReply);
    connect(m_manager, &QNetworkAccessManager::encrypted, this, &RemoteDatabase::gotEncrypted);
    connect(m_manager, &QNetworkAccessManager::sslErrors, this, &RemoteDatabase::gotError);
}

RemoteDatabase::~RemoteDatabase()
{
    delete m_manager;
    delete m_progress;

    // Close local storage db - but only if it was created/opened in the meantime
    if(m_dbLocal)
        sqlite3_close(m_dbLocal);
}

void RemoteDatabase::reloadSettings()
{
    // Load all configured client certificates
    m_clientCertFiles.clear();
    auto client_certs = Settings::getValue("remote", "client_certificates").toStringList();
    foreach(const QString& path, client_certs)
    {
        QFile file(path);
        file.open(QFile::ReadOnly);
        QSslCertificate cert(&file);
        file.close();
        m_clientCertFiles.insert(path, cert);
    }

    // TODO Add support for proxies here
}

void RemoteDatabase::gotEncrypted(QNetworkReply* reply)
{
#ifdef Q_OS_MAC
    // Temporary workaround for now, as Qt 5.8 and below doesn't support
    // verifying certificates on OSX: https://bugreports.qt.io/browse/QTBUG-56973
    // Hopefully this is fixed in Qt 5.9
    return;
#else
    // Verify the server's certificate using our CA certs
    auto verificationErrors = reply->sslConfiguration().peerCertificate().verify(m_sslConfiguration.caCertificates());
    bool good = false;
    if(verificationErrors.size() == 0)
    {
        good = true;
    } else if(verificationErrors.size() == 1) {
        // Ignore any self signed certificate errors
        if(verificationErrors.at(0).error() == QSslError::SelfSignedCertificate || verificationErrors.at(0).error() == QSslError::SelfSignedCertificateInChain)
            good = true;
    }

    // If the server certificate didn't turn out to be good, abort the reply here
    if(!good)
        reply->abort();
#endif
}

void RemoteDatabase::gotReply(QNetworkReply* reply)
{
    // If this was a push database request, close the opened file
    if(reply->property("type").toInt() == RequestTypePush)
        delete reinterpret_cast<const QFile*>(reply->property("file").value<void*>());

    // Check if request was successful
    if(reply->error() != QNetworkReply::NoError)
    {
        QMessageBox::warning(0, qApp->applicationName(),
                             tr("Error when connecting to %1.\n%2").arg(reply->url().toString()).arg(reply->errorString()));
        reply->deleteLater();
        return;
    }

    // Check for redirect
    QString redirectUrl = reply->attribute(QNetworkRequest::RedirectionTargetAttribute).toString();
    if(!redirectUrl.isEmpty())
    {
        // Avoid redirect loop
        if(reply->url() == redirectUrl)
        {
            reply->deleteLater();
            return;
        }
        fetch(redirectUrl, static_cast<RequestType>(reply->property("type").toInt()), reply->property("certfile").toString(), reply->property("userdata"));
        reply->deleteLater();
        return;
    }

    // What type of data is this?
    RequestType type = static_cast<RequestType>(reply->property("type").toInt());

    // Hide progress dialog before opening a file dialog to make sure the progress dialog doesn't interfer with the file dialog
    if(type == RequestTypeDatabase || type == RequestTypePush)
        m_progress->reset();

    // Handle the reply data
    switch(type)
    {
    case RequestTypeDatabase:
        {
            // It's a database file.

            // Generate a unique file name to save the file under
            QString saveFileAs = Settings::getValue("remote", "clonedirectory").toString() +
                QString("/%2_%1.remotedb").arg(QDateTime::currentMSecsSinceEpoch()).arg(reply->url().fileName());

            // Add cloned database to list of local databases
            localAdd(saveFileAs, reply->property("certfile").toString(), reply->url());

            // Save the downloaded data under the generated file name
            QFile file(saveFileAs);
            file.open(QIODevice::WriteOnly);
            file.write(reply->readAll());
            file.close();

            // Tell the application to open this file
            emit openFile(saveFileAs);
        }
        break;
    case RequestTypeDirectory:
        emit gotDirList(reply->readAll(), reply->property("userdata"));
        break;
    case RequestTypeNewVersionCheck:
        {
            QString version = reply->readLine().trimmed();
            QString url = reply->readLine().trimmed();
            emit gotCurrentVersion(version, url);
            break;
        }
    case RequestTypeLicenceList:
        {
            // Read and check results
            QJsonDocument json = QJsonDocument::fromJson(reply->readAll());
            if(json.isNull() || !json.isObject())
                break;
            QJsonObject obj = json.object();

            // Parse data and build licence map (short name -> long name)
            QMap<QString, QString> licences;
            for(auto it=obj.constBegin();it!=obj.constEnd();++it)
                licences.insert(it.key(), it.value().toObject().value("full_name").toString());

            // Send licence map to anyone who's interested
            emit gotLicenceList(licences);
            break;
        }
    case RequestTypePush:
        emit uploadFinished(reply->url().toString());
        break;
    default:
        break;
    }

    // Delete reply later, i.e. after returning from this slot function
    reply->deleteLater();
}

void RemoteDatabase::gotError(QNetworkReply* reply, const QList<QSslError>& errors)
{
    // If this was a push database request, close the opened file
    if(reply->property("type").toInt() == RequestTypePush)
        delete reinterpret_cast<const QFile*>(reply->property("file").value<void*>());

    // Are there any errors in here that aren't about self-signed certificates and non-matching hostnames?
    bool serious_errors = false;
    foreach(const QSslError& error, errors)
    {
        if(error.error() != QSslError::SelfSignedCertificate)
        {
            serious_errors = true;
            break;
        }
    }

    // Just stop the error checking here and accept the reply if there were no 'serious' errors
    if(!serious_errors)
    {
        reply->ignoreSslErrors(errors);
        return;
    }

    // Build an error message and short it to the user
    QString message = tr("Error opening remote file at %1.\n%2").arg(reply->url().toString()).arg(errors.at(0).errorString());
    QMessageBox::warning(0, qApp->applicationName(), message);

    // Delete reply later, i.e. after returning from this slot function
    m_progress->reset();
    reply->deleteLater();
}

void RemoteDatabase::updateProgress(qint64 bytesTransmitted, qint64 bytesTotal)
{
    // Find out to which pending reply this progress update belongs
    QNetworkReply* reply = qobject_cast<QNetworkReply*>(QObject::sender());

    // Update progress dialog
    if(bytesTotal == -1)
    {
        // We don't know anything about the current progress, but it's still downloading
        m_progress->setMinimum(0);
        m_progress->setMaximum(0);
        m_progress->setValue(0);
    } else if(bytesTransmitted == bytesTotal) {
        // The download has finished
        m_progress->reset();
    } else {
        // It's still downloading and we know the current progress
        m_progress->setMinimum(0);
        m_progress->setMaximum(bytesTotal);
        m_progress->setValue(bytesTransmitted);
    }

    // Check if the Cancel button has been pressed
    qApp->processEvents();
    if(reply && m_progress->wasCanceled())
    {
        reply->abort();
        m_progress->reset();
    }
}

const QList<QSslCertificate>& RemoteDatabase::caCertificates() const
{
    static QList<QSslCertificate> certs = m_sslConfiguration.caCertificates();
    return certs;
}

QString RemoteDatabase::getInfoFromClientCert(const QString& cert, CertInfo info) const
{
    // Get the common name of the certificate and split it into user name and server address
    QString cn = m_clientCertFiles[cert].subjectInfo(QSslCertificate::CommonName).at(0);
    QStringList cn_parts = cn.split("@");
    if(cn_parts.size() < 2)
        return QString();

    // Return requested part of the CN
    if(info == CertInfoUser)
        return cn_parts.first();
    else if(info == CertInfoServer)
        return cn_parts.last();
    else
        return QString();
}

bool RemoteDatabase::prepareSsl(QNetworkRequest* request, const QString& clientCert)
{
    // Check if client cert exists
    const QSslCertificate& cert = m_clientCertFiles[clientCert];
    if(cert.isNull())
    {
        QMessageBox::warning(0, qApp->applicationName(), tr("Error: Invalid client certificate specified."));
        return false;
    }

    // Load private key for the client certificate
    QFile fileClientCert(clientCert);
    fileClientCert.open(QFile::ReadOnly);
    QSslKey clientKey(&fileClientCert, QSsl::Rsa, QSsl::Pem, QSsl::PrivateKey);
    while(clientKey.isNull())
    {
        // If the private key couldn't be read, we assume it's password protected. So ask the user for the correct password and try reading it
        // again. If the user cancels the password dialog, abort the whole process.
        QString password = QInputDialog::getText(0, qApp->applicationName(), tr("Please enter the passphrase for this client certificate in order to authenticate."));
        if(password.isEmpty())
            return false;
        clientKey = QSslKey(&fileClientCert, QSsl::Rsa, QSsl::Pem, QSsl::PrivateKey, password.toUtf8());
    }
    fileClientCert.close();

    // Set client certificate (from the cache) and private key (just loaded)
    m_sslConfiguration.setLocalCertificate(cert);
    m_sslConfiguration.setPrivateKey(clientKey);

    // Apply SSL configuration
    request->setSslConfiguration(m_sslConfiguration);

    return true;
}

void RemoteDatabase::prepareProgressDialog(QNetworkReply* reply, bool upload, const QString& url)
{
    // Instantiate progress dialog and apply some basic settings
    if(!m_progress)
        m_progress = new QProgressDialog();
    m_progress->reset();
    m_progress->setWindowModality(Qt::ApplicationModal);
    m_progress->setCancelButtonText(tr("Cancel"));

    // Set dialog text
    if(upload)
        m_progress->setLabelText(tr("Uploading remote database to\n%1.").arg(url));
    else
        m_progress->setLabelText(tr("Downloading remote database from\n%1.").arg(url));

    // Show dialog
    m_progress->show();
    qApp->processEvents();

    // Make sure the dialog is updated
    if(upload)
        connect(reply, &QNetworkReply::uploadProgress, this, &RemoteDatabase::updateProgress);
    else
        connect(reply, &QNetworkReply::downloadProgress, this, &RemoteDatabase::updateProgress);
}

void RemoteDatabase::fetch(const QString& url, RequestType type, const QString& clientCert, QVariant userdata)
{
    // Check if network is accessible. If not, abort right here
    if(m_manager->networkAccessible() == QNetworkAccessManager::NotAccessible)
    {
        QMessageBox::warning(0, qApp->applicationName(), tr("Error: The network is not accessible."));
        return;
    }

    // If this is a request for a database there is a chance that we've already cloned that database. So check for that first
    if(type == RequestTypeDatabase)
    {
        QString exists = localExists(url, clientCert);
        if(!exists.isEmpty())
        {
            // Database has already been cloned! So open the local file instead of fetching the one from the
            // server again.
            emit openFile(exists);
            return;
        }
    }

    // Build network request
    QNetworkRequest request;
    request.setUrl(url);
    request.setRawHeader("User-Agent", QString("%1 %2").arg(qApp->organizationName()).arg(APP_VERSION).toUtf8());

    // Set SSL configuration when trying to access a file via the HTTPS protocol.
    // Skip this step when no client certificate was specified. In this case the default HTTPS configuration is used.
    bool https = QUrl(url).scheme().compare("https", Qt::CaseInsensitive) == 0;
    if(https && !clientCert.isNull())
    {
        // If configuring the SSL connection fails, abort the request here
        if(!prepareSsl(&request, clientCert))
            return;
    }

    // Clear access cache if necessary
    clearAccessCache(clientCert);

    // Fetch database and prepare pending reply for future processing
    QNetworkReply* reply = m_manager->get(request);
    reply->setProperty("type", type);
    reply->setProperty("certfile", clientCert);
    reply->setProperty("userdata", userdata);

    // Initialise the progress dialog for this request, but only if this is a database file. Directory listing are small enough to be loaded
    // without progress dialog.
    if(type == RequestTypeDatabase)
        prepareProgressDialog(reply, false, url);
}

void RemoteDatabase::push(const QString& filename, const QString& url, const QString& clientCert,
                          const QString& commitMessage, const QString& licence, bool isPublic)
{
    // Check if network is accessible. If not, abort right here
    if(m_manager->networkAccessible() == QNetworkAccessManager::NotAccessible)
    {
        QMessageBox::warning(0, qApp->applicationName(), tr("Error: The network is not accessible."));
        return;
    }

    // Open the file to send and check if it exists
    QFile* file = new QFile(filename);
    if(!file->open(QFile::ReadOnly))
    {
        delete file;
        QMessageBox::warning(0, qApp->applicationName(), tr("Error: Cannot open the file for sending."));
        return;
    }

    // Build network request
    QNetworkRequest request;
    request.setUrl(url);
    request.setRawHeader("User-Agent", QString("%1 %2").arg(qApp->organizationName()).arg(APP_VERSION).toUtf8());

    // Set custom headers for extra information about the commit
    request.setRawHeader("commitmsg", commitMessage.toUtf8());
    request.setRawHeader("licence", licence.toUtf8());
    request.setRawHeader("public", isPublic ? "true" : "false");

    // Set SSL configuration when trying to access a file via the HTTPS protocol
    bool https = QUrl(url).scheme().compare("https", Qt::CaseInsensitive) == 0;
    if(https)
    {
        // If configuring the SSL connection fails, abort the request here
        if(!prepareSsl(&request, clientCert))
        {
            delete file;
            return;
        }
    }

    // Clear access cache if necessary
    clearAccessCache(clientCert);

    // Put database to remote server and save pending reply for future processing
    QNetworkReply* reply = m_manager->put(request, file);
    reply->setProperty("type", RequestTypePush);
    reply->setProperty("file", qVariantFromValue(dynamic_cast<void*>(file)));

    // Initialise the progress dialog for this request
    prepareProgressDialog(reply, true, url);
}

void RemoteDatabase::localAssureOpened()
{
    // This function should be called first in each RemoteDatabase::local* function. It assures the database for storing
    // the local database information is opened and ready. If the database file doesn't exist yet it is created by this
    // function. If the database file is already created and opened this function does nothing. The reason to open the
    // database on first use instead of doing that in the constructor of this class is that this way no database file is
    // going to be created and no database handle is held when it's not actually needed. For people not interested in
    // the dbhub.io functionality this means no unnecessary files being created.

    // Check if database is already opened and return if it is
    if(m_dbLocal)
        return;

    // Open file
    QString database_file = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation) + "/remotedbs.db";
    if(sqlite3_open_v2(database_file.toUtf8(), &m_dbLocal, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE, NULL) != SQLITE_OK)
    {
        QMessageBox::warning(nullptr, qApp->applicationName(), tr("Error opening local databases list.\n%1").arg(QString::fromUtf8(sqlite3_errmsg(m_dbLocal))));
        return;
    }

    // Create local local table if it doesn't exists yet
    char* errmsg;
    QString statement = QString("CREATE TABLE IF NOT EXISTS \"local\"("
                                "\"id\" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,"
                                "\"identity\" TEXT NOT NULL,"
                                "\"name\" TEXT NOT NULL,"
                                "\"url\" TEXT NOT NULL,"
                                "\"commit_id\" TEXT NOT NULL,"
                                "\"file\" INTEGER,"
                                "\"modified\" INTEGER DEFAULT 0"
                                ")");
    if(sqlite3_exec(m_dbLocal, statement.toUtf8(), NULL, NULL, &errmsg) != SQLITE_OK)
    {
        QMessageBox::warning(nullptr, qApp->applicationName(), tr("Error creating local databases list.\n%1").arg(QString::fromUtf8(errmsg)));
        sqlite3_free(errmsg);
        sqlite3_close(m_dbLocal);
        m_dbLocal = nullptr;
        return;
    }
}

void RemoteDatabase::localAdd(QString filename, QString identity, const QUrl& url)
{
    // This function adds a new local database clone to our internal list. It does so by adding a single
    // new record to the remote dbs database. All the fields are extracted from the filename, the identity
    // and (most importantly) the url parameters. Note that for the commit id field to be correctly filled we
    // require the commit id to be part of the url parameter. Also note that this function doesn't check if the
    // database has already been added to the list before. This needs to be done before calling this function,
    // ideally even before sending out a request to the network.

    localAssureOpened();

    // Insert database into local database list
    QString sql = QString("INSERT INTO local(identity, name, url, commit_id, file) VALUES(?, ?, ?, ?, ?)");
    sqlite3_stmt* stmt;
    if(sqlite3_prepare_v2(m_dbLocal, sql.toUtf8(), -1, &stmt, 0) != SQLITE_OK)
        return;

    QFileInfo f(identity);                  // Remove the path
    identity = f.fileName();
    if(sqlite3_bind_text(stmt, 1, identity.toUtf8(), identity.toUtf8().length(), SQLITE_TRANSIENT))
    {
        sqlite3_finalize(stmt);
        return;
    }

    if(sqlite3_bind_text(stmt, 2, url.fileName().toUtf8(), url.fileName().toUtf8().length(), SQLITE_TRANSIENT))
    {
        sqlite3_finalize(stmt);
        return;
    }

    QUrl url_without_query = url;           // Remove the '?commit=x' bit from the URL
    url_without_query.setQuery(QString());
    if(sqlite3_bind_text(stmt, 3, url_without_query.toString().toUtf8(), url_without_query.toString().toUtf8().length(), SQLITE_TRANSIENT))
    {
        sqlite3_finalize(stmt);
        return;
    }

    if(sqlite3_bind_text(stmt, 4, QUrlQuery(url).queryItemValue("commit").toUtf8(), QUrlQuery(url).queryItemValue("commit").toUtf8().length(), SQLITE_TRANSIENT))
    {
        sqlite3_finalize(stmt);
        return;
    }

    f = QFileInfo(filename);                // Remove the path
    filename = f.fileName();
    if(sqlite3_bind_text(stmt, 5, filename.toUtf8(), filename.toUtf8().length(), SQLITE_TRANSIENT))
    {
        sqlite3_finalize(stmt);
        return;
    }

    if(sqlite3_step(stmt) != SQLITE_DONE)
    {
        sqlite3_finalize(stmt);
        return;
    }

    sqlite3_finalize(stmt);
}

QString RemoteDatabase::localExists(const QUrl& url, QString identity)
{
    // This function checks if there already is a clone for the given combination of url and identity. It returns the filename
    // of this clone if there is or a null string if there isn't a clone yet. The identity needs to be part of this check because
    // with the url alone there could be corner cases where different versions or whatever may not be accessible for all users.

    localAssureOpened();

    // Extract commit id from url and remove query part afterwards
    QString url_commit_id = QUrlQuery(url).queryItemValue("commit");
    QUrl url_without_query = url;
    url_without_query.setQuery(QString());

    // Query commit id and filename for the given combination of url and identity
    QString sql = QString("SELECT id, commit_id, file FROM local WHERE url=? AND identity=?");
    sqlite3_stmt* stmt;
    if(sqlite3_prepare_v2(m_dbLocal, sql.toUtf8(), -1, &stmt, 0) != SQLITE_OK)
        return QString();

    if(sqlite3_bind_text(stmt, 1, url_without_query.toString().toUtf8(), url_without_query.toString().toUtf8().length(), SQLITE_TRANSIENT))
    {
        sqlite3_finalize(stmt);
        return QString();
    }

    QFileInfo f(identity);                  // Remove the path
    identity = f.fileName();
    if(sqlite3_bind_text(stmt, 2, identity.toUtf8(), identity.toUtf8().length(), SQLITE_TRANSIENT))
    {
        sqlite3_finalize(stmt);
        return QString();
    }

    if(sqlite3_step(stmt) != SQLITE_ROW)
    {
        // If there was either an error or no record was found for this combination of url and
        // identity, stop here.
        sqlite3_finalize(stmt);
        return QString();
    }

    // Having come here we can assume that at least some local clone for the given combination of
    // url and identity exists. So extract all the information we have on it.
    //int local_id = sqlite3_column_int(stmt, 0);
    QString local_commit_id = QString::fromUtf8(reinterpret_cast<const char*>(sqlite3_column_text(stmt, 1)));
    QString local_file = QString::fromUtf8(reinterpret_cast<const char*>(sqlite3_column_text(stmt, 2)));
    sqlite3_finalize(stmt);

    // There are three possibilities now: either the requested commit id is the same as the local commit id, or the requested commit id
    // is newer, or the local commit id is newer.
    if(local_commit_id == url_commit_id)
    {
        // Both commit ids are the same. That's the perfect match, so just return the path to the local file
        return Settings::getValue("remote", "clonedirectory").toString() + "/" + local_file;
    } else {
        // In all the other cases just treat the remote database as a completely new database for now.

        // TODO Add some way to update the local clone here. Maybe ask the user what to do because I don't really know what the
        // most sensible way to go is in the two remaining cases. We can use the local_id variable (see above) to update the
        // record afterwards.

        return QString();
    }
}

void RemoteDatabase::clearAccessCache(const QString& clientCert)
{
    // When the client certificate is different from the one before, clear the access and authentication cache.
    // Otherwise Qt might use the old certificate again.
    static QString lastClientCert;
    if(lastClientCert != clientCert)
    {
        lastClientCert = clientCert;
        m_manager->clearAccessCache();
    }
}
