#ifndef SQLEXECUTIONAREA_H
#define SQLEXECUTIONAREA_H

#include <QWidget>

class SqlTextEdit;
class SqliteTableModel;
class DBBrowserDB;
class QMenu;
class ExtendedTableWidget;

namespace Ui {
class SqlExecutionArea;
}

class SqlExecutionArea : public QWidget
{
    Q_OBJECT

public:
    explicit SqlExecutionArea(DBBrowserDB& _db, QWidget* parent = Q_NULLPTR);
    ~SqlExecutionArea();

    QString getSql() const;
    QString getSelectedSql() const;

    QString fileName() const { return sqlFileName; }
    void setFileName(const QString& filename) { sqlFileName = filename; }

    SqliteTableModel* getModel() { return model; }
    SqlTextEdit* getEditor();
    ExtendedTableWidget *getTableResult();
    
public slots:
    virtual void finishExecution(const QString& result);
    virtual void enableSaveButton(bool enable);
    virtual void saveAsCsv();
    virtual void saveAsView();
    virtual void reloadSettings();

private:
    DBBrowserDB& db;
    SqliteTableModel* model;
    QMenu* menuPopupSave;
    QString sqlFileName;
    Ui::SqlExecutionArea* ui;
};

#endif
