#import "vpn.h"

%hook VPNSetupListController
- (void)setCurrentVPNType:(unsigned long long )currentVPNType { %log; %orig; }
- (unsigned long long )currentVPNType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setOriginalVPNType:(unsigned long long )originalVPNType { %log; %orig; }
- (unsigned long long )originalVPNType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setEncryptionType:(unsigned long long )encryptionType { %log; %orig; }
- (unsigned long long )encryptionType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setVpnGrade:(unsigned long long )vpnGrade { %log; %orig; }
- (unsigned long long )vpnGrade { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setEapType:(unsigned long long )eapType { %log; %orig; }
- (unsigned long long )eapType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setAuthType:(unsigned long long )authType { %log; %orig; }
- (unsigned long long )authType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setBackButton:(UIBarButtonItem * )backButton { %log; %orig; }
- (UIBarButtonItem * )backButton { %log; UIBarButtonItem *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setOverviewMode:(BOOL )overviewMode { %log; %orig; }
- (BOOL )overviewMode { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setEditMode:(BOOL )editMode { %log; %orig; }
- (BOOL )editMode { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setPasswordEditOnly:(BOOL )passwordEditOnly { %log; %orig; }
- (BOOL )passwordEditOnly { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setDirty:(BOOL )dirty { %log; %orig; }
- (BOOL )dirty { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setSendAllTraffic:(BOOL )sendAllTraffic { %log; %orig; }
- (BOOL )sendAllTraffic { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setUseRSASecurID:(BOOL )useRSASecurID { %log; %orig; }
- (BOOL )useRSASecurID { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setUsesCertificates:(BOOL )usesCertificates { %log; %orig; }
- (BOOL )usesCertificates { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setPasswordRequired:(BOOL )passwordRequired { %log; %orig; }
- (BOOL )passwordRequired { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setUserCreated:(BOOL )userCreated { %log; %orig; }
- (BOOL )userCreated { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setOnDemandService:(BOOL )onDemandService { %log; %orig; }
- (BOOL )onDemandService { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setOnDemandEnabled:(BOOL )onDemandEnabled { %log; %orig; }
- (BOOL )onDemandEnabled { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setAlwaysPrompt:(BOOL )alwaysPrompt { %log; %orig; }
- (BOOL )alwaysPrompt { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setConnectSpecifier:(PSSpecifier * )connectSpecifier { %log; %orig; }
- (PSSpecifier * )connectSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setServiceID:(NSString * )serviceID { %log; %orig; }
- (NSString * )serviceID { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setDisplayName:(NSString * )displayName { %log; %orig; }
- (NSString * )displayName { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setAppName:(NSString * )appName { %log; %orig; }
- (NSString * )appName { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setIncludedBundleIDs:(NSDictionary * )includedBundleIDs { %log; %orig; }
- (NSDictionary * )includedBundleIDs { %log; NSDictionary *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setServer:(NSString * )server { %log; %orig; }
- (NSString * )server { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setAccount:(NSString * )account { %log; %orig; }
- (NSString * )account { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setPassword:(NSString * )password { %log; %orig; }
- (NSString * )password { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setSharedSecret:(NSString * )sharedSecret { %log; %orig; }
- (NSString * )sharedSecret { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setGroupDisplayName:(NSString * )groupDisplayName { %log; %orig; }
- (NSString * )groupDisplayName { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setLocalIdentifier:(NSString * )localIdentifier { %log; %orig; }
- (NSString * )localIdentifier { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setRemoteIdentifier:(NSString * )remoteIdentifier { %log; %orig; }
- (NSString * )remoteIdentifier { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setDisplayNameSpecifier:(PSSpecifier * )displayNameSpecifier { %log; %orig; }
- (PSSpecifier * )displayNameSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setServerSpecifier:(PSSpecifier * )serverSpecifier { %log; %orig; }
- (PSSpecifier * )serverSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setServerAddressSpecifier:(PSSpecifier * )serverAddressSpecifier { %log; %orig; }
- (PSSpecifier * )serverAddressSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setCiscoImageSpecifier:(PSSpecifier * )ciscoImageSpecifier { %log; %orig; }
- (PSSpecifier * )ciscoImageSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setSendAllTrafficSpecifier:(PSSpecifier * )sendAllTrafficSpecifier { %log; %orig; }
- (PSSpecifier * )sendAllTrafficSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setRsaSpecifier:(PSSpecifier * )rsaSpecifier { %log; %orig; }
- (PSSpecifier * )rsaSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setSharedSecretSpecifier:(PSSpecifier * )sharedSecretSpecifier { %log; %orig; }
- (PSSpecifier * )sharedSecretSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setEncryptionTypeSpecifier:(PSSpecifier * )encryptionTypeSpecifier { %log; %orig; }
- (PSSpecifier * )encryptionTypeSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setVpnGradeStaticSpecifier:(PSSpecifier * )vpnGradeStaticSpecifier { %log; %orig; }
- (PSSpecifier * )vpnGradeStaticSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setPasswordSpecifier:(PSSpecifier * )passwordSpecifier { %log; %orig; }
- (PSSpecifier * )passwordSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setGroupNameSpecifier:(PSSpecifier * )groupNameSpecifier { %log; %orig; }
- (PSSpecifier * )groupNameSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setUseCertificateSwitchSpecifier:(PSSpecifier * )useCertificateSwitchSpecifier { %log; %orig; }
- (PSSpecifier * )useCertificateSwitchSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setCertificateListSpecifier:(PSSpecifier * )certificateListSpecifier { %log; %orig; }
- (PSSpecifier * )certificateListSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setAccountSpecifier:(PSSpecifier * )accountSpecifier { %log; %orig; }
- (PSSpecifier * )accountSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setLocalIdentifierSpecifier:(PSSpecifier * )localIdentifierSpecifier { %log; %orig; }
- (PSSpecifier * )localIdentifierSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setRemoteIdentifierSpecifier:(PSSpecifier * )remoteIdentifierSpecifier { %log; %orig; }
- (PSSpecifier * )remoteIdentifierSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setEapTypeSpecifier:(PSSpecifier * )eapTypeSpecifier { %log; %orig; }
- (PSSpecifier * )eapTypeSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setAuthTypeSpecifier:(PSSpecifier * )authTypeSpecifier { %log; %orig; }
- (PSSpecifier * )authTypeSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setTimeSpecifier:(PSSpecifier * )timeSpecifier { %log; %orig; }
- (PSSpecifier * )timeSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setTimeSpecifierArray:(NSMutableArray * )timeSpecifierArray { %log; %orig; }
- (NSMutableArray * )timeSpecifierArray { %log; NSMutableArray *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setTypeTabSpecifiers:(NSArray * )typeTabSpecifiers { %log; %orig; }
- (NSArray * )typeTabSpecifiers { %log; NSArray *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setEditServerSpecifier:(PSSpecifier * )editServerSpecifier { %log; %orig; }
- (PSSpecifier * )editServerSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyGroupSpecifiers:(NSArray * )proxyGroupSpecifiers { %log; %orig; }
- (NSArray * )proxyGroupSpecifiers { %log; NSArray *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setPacSpecifiers:(NSArray * )pacSpecifiers { %log; %orig; }
- (NSArray * )pacSpecifiers { %log; NSArray *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setManualProxySpecifiers:(NSArray * )manualProxySpecifiers { %log; %orig; }
- (NSArray * )manualProxySpecifiers { %log; NSArray *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyAuthSpecifiers:(NSArray * )proxyAuthSpecifiers { %log; %orig; }
- (NSArray * )proxyAuthSpecifiers { %log; NSArray *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyLabelSpecifier:(PSSpecifier * )proxyLabelSpecifier { %log; %orig; }
- (PSSpecifier * )proxyLabelSpecifier { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyType:(unsigned long long )proxyType { %log; %orig; }
- (unsigned long long )proxyType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setProxyAuthenticated:(BOOL )proxyAuthenticated { %log; %orig; }
- (BOOL )proxyAuthenticated { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setProxyServer:(NSString * )proxyServer { %log; %orig; }
- (NSString * )proxyServer { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyPort:(NSString * )proxyPort { %log; %orig; }
- (NSString * )proxyPort { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyUsername:(NSString * )proxyUsername { %log; %orig; }
- (NSString * )proxyUsername { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyPassword:(NSString * )proxyPassword { %log; %orig; }
- (NSString * )proxyPassword { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setProxyPACFile:(NSString * )proxyPACFile { %log; %orig; }
- (NSString * )proxyPACFile { %log; NSString *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setCiscoCertificate:(id )ciscoCertificate { %log; %orig; }
- (id )ciscoCertificate { %log; id  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setDeleteConfirmView:(UIAlertView * )deleteConfirmView { %log; %orig; }
- (UIAlertView * )deleteConfirmView { %log; UIAlertView *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setPptpWarningView:(UIAlertView * )pptpWarningView { %log; %orig; }
- (UIAlertView * )pptpWarningView { %log; UIAlertView *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setPptpWarningAccepted:(BOOL )pptpWarningAccepted { %log; %orig; }
- (BOOL )pptpWarningAccepted { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setEditButton:(PSSpecifier * )editButton { %log; %orig; }
- (PSSpecifier * )editButton { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setEnableButton:(PSSpecifier * )enableButton { %log; %orig; }
- (PSSpecifier * )enableButton { %log; PSSpecifier *  r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)updateDoneButton { %log; %orig; }
//-(NSString *)password { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setPassword:(NSString *)arg1  { %log; %orig; }
//-(void)setOnDemandEnabled:(BOOL)arg1  { %log; %orig; }
//-(BOOL)onDemandEnabled { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setRemoteIdentifier:(NSString *)arg1  { %log; %orig; }
//-(NSString *)sharedSecret { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setSharedSecret:(NSString *)arg1  { %log; %orig; }
//-(NSString *)remoteIdentifier { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)specifiers { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setGroupDisplayName:(NSString *)arg1  { %log; %orig; }
//-(NSString *)groupDisplayName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSString *)localIdentifier { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)dealloc { %log; %orig; }
-(id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSString *)server { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)alertView:(id)arg1 clickedButtonAtIndex:(long long)arg2  { %log; %orig; }
-(void)loadView { %log; %orig; }
-(void)viewDidAppear:(BOOL)arg1  { %log; %orig; }
-(id)bundle { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSString *)displayName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)connection { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setDirty:(BOOL)arg1  { %log; %orig; }
//-(BOOL)dirty { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(BOOL)haveEnoughValues { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(BOOL)proxyAuthenticated { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(id)proxyUsesAuthentication:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)proxyType:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setProxyServer:(id)arg1 specifier:(id)arg2  { %log; %orig; }
-(id)proxyServer:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setProxyUsesAuthentication:(id)arg1 specifier:(id)arg2  { %log; %orig; }
-(void)setProxyUsername:(id)arg1 specifier:(id)arg2  { %log; %orig; }
-(id)proxyUsername:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setProxyPassword:(id)arg1 specifier:(id)arg2  { %log; %orig; }
-(id)proxyPassword:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setProxyType:(id)arg1 specifier:(id)arg2  { %log; %orig; }
//-(void)setServiceID:(NSString *)arg1  { %log; %orig; }
//-(BOOL)useRSASecurID { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setUseRSASecurID:(BOOL)arg1  { %log; %orig; }
-(void)vpnStatusChanged:(id)arg1  { %log; %orig; }
-(void)vpnConfigurationChanged:(id)arg1  { %log; %orig; }
-(void)saveButtonClicked:(id)arg1  { %log; %orig; }
//-(BOOL)overviewMode { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(NSMutableArray *)timeSpecifierArray { %log; NSMutableArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)timeSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)timerUpdated:(id)arg1  { %log; %orig; }
//-(void)setProxyAuthenticated:(BOOL)arg1  { %log; %orig; }
//-(NSArray *)proxyAuthSpecifiers { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)scrollToSpecifier:(id)arg1  { %log; %orig; }
//-(NSArray *)manualProxySpecifiers { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSArray *)pacSpecifiers { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSString *)proxyPACFile { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setProxyPACFile:(NSString *)arg1  { %log; %orig; }
//-(PSSpecifier *)passwordSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(BOOL)sendAllTraffic { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setSendAllTraffic:(BOOL)arg1  { %log; %orig; }
-(void)saveButtonTapped:(id)arg1  { %log; %orig; }
//-(void)setOnDemandService:(BOOL)arg1  { %log; %orig; }
//-(UIAlertView *)deleteConfirmView { %log; UIAlertView * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(unsigned long long)currentVPNType { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
//-(id)ciscoCertificate { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(BOOL)usesCertificates { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(BOOL)onDemandService { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(unsigned long long)vpnGrade { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
-(id)onDemand:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)useRSASecurIDForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)sendAllTraffic:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(unsigned long long)eapType { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
//-(unsigned long long)authType { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
//-(unsigned long long)originalVPNType { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
//-(void)setOriginalVPNType:(unsigned long long)arg1  { %log; %orig; }
-(BOOL)saveConfigurationSettings { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(BOOL)pptpWarningAccepted { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)warnForPPTP { %log; %orig; }
//-(void)setPptpWarningAccepted:(BOOL)arg1  { %log; %orig; }
-(void)leaveEditMode { %log; %orig; }
//-(void)setBackButton:(UIBarButtonItem *)arg1  { %log; %orig; }
//-(void)setOverviewMode:(BOOL)arg1  { %log; %orig; }
-(void)enterEditMode { %log; %orig; }
-(BOOL)deleteConfiguration:(id)arg1  { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setDeleteConfirmView:(UIAlertView *)arg1  { %log; %orig; }
//-(void)setPptpWarningView:(UIAlertView *)arg1  { %log; %orig; }
//-(UIAlertView *)pptpWarningView { %log; UIAlertView * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)deleteVPNConfiguration:(id)arg1  { %log; %orig; }
//-(PSSpecifier *)certificateListSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)connectSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setEapType:(unsigned long long)arg1  { %log; %orig; }
//-(void)setAuthType:(unsigned long long)arg1  { %log; %orig; }
//-(void)setVpnGrade:(unsigned long long)arg1  { %log; %orig; }
//-(void)setCurrentVPNType:(unsigned long long)arg1  { %log; %orig; }
//-(void)setUsesCertificates:(BOOL)arg1  { %log; %orig; }
//-(void)setCiscoCertificate:(id)arg1  { %log; %orig; }
-(void)setUsesCertificates:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setOnDemandService:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setDisplayName:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setUsername:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setServer:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setSharedSecret:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setCiscoCertificate:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setUseRSASecurID:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setSendAllTraffic:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setPPTPEncryptionLevel:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setEAPType:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setAuthType:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setGroupDisplayName:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setPassword:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setPasswordRequired:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setLocalIdentifier:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setRemoteIdentifier:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(void)setProxyServerPort:(id)arg1 specifier:(id)arg2  { %log; %orig; }
-(void)setPacFile:(id)arg1 specifier:(id)arg2  { %log; %orig; }
//-(void)setAlwaysPrompt:(BOOL)arg1  { %log; %orig; }
//-(void)setIncludedBundleIDs:(NSDictionary *)arg1  { %log; %orig; }
-(void)setStateForServiceID:(id)arg1  { %log; %orig; }
//-(PSSpecifier *)serverAddressSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setTimeSpecifierArray:(NSMutableArray *)arg1  { %log; %orig; }
-(id)interfaceTypeForConnection:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)remoteIPForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)localIPForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)timeConnectedForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)serverForConnection:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setServerSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(PSSpecifier *)serverSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)usernameForConnection:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setAccountSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(PSSpecifier *)accountSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setServerAddressSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setTimeSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setConnectionState:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(id)getConnectionStateForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setConnectSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setUserCreated:(BOOL)arg1  { %log; %orig; }
//-(void)setEnableButton:(PSSpecifier *)arg1  { %log; %orig; }
//-(PSSpecifier *)enableButton { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)enableButtonTapped:(id)arg1  { %log; %orig; }
//-(BOOL)userCreated { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(BOOL)alwaysPrompt { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setPasswordEditOnly:(BOOL)arg1  { %log; %orig; }
-(void)deleteConfirm:(id)arg1  { %log; %orig; }
-(void)renewCertificate:(id)arg1  { %log; %orig; }
//-(NSDictionary *)includedBundleIDs { %log; NSDictionary * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)getDescriptionForApp:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(BOOL)passwordEditOnly { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setPasswordSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setVpnGradeStaticSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setGroupNameSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setLocalIdentifierSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setRemoteIdentifierSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setEapTypeSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setUseCertificateSwitchSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setAuthTypeSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setCertificateListSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(PSSpecifier *)useCertificateSwitchSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setSharedSecretSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setEncryptionTypeSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(PSSpecifier *)encryptionTypeSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setRsaSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setTypeTabSpecifiers:(NSArray *)arg1  { %log; %orig; }
//-(void)setEditServerSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setCiscoImageSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setDisplayNameSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setSendAllTrafficSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(void)setProxyLabelSpecifier:(PSSpecifier *)arg1  { %log; %orig; }
//-(PSSpecifier *)proxyLabelSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setProxyGroupSpecifiers:(NSArray *)arg1  { %log; %orig; }
//-(void)setPacSpecifiers:(NSArray *)arg1  { %log; %orig; }
//-(void)setManualProxySpecifiers:(NSArray *)arg1  { %log; %orig; }
//-(void)setProxyAuthSpecifiers:(NSArray *)arg1  { %log; %orig; }
//-(PSSpecifier *)ciscoImageSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSArray *)typeTabSpecifiers { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)vpnGradeStaticSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)displayNameSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)editServerSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)remoteIdentifierSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)localIdentifierSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)eapTypeSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)authTypeSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)sharedSecretSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)groupNameSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)rsaSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(PSSpecifier *)sendAllTrafficSpecifier { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSArray *)proxyGroupSpecifiers { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)proxyServerPort:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)pacFile:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setOnDemand:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(id)pptpEncryptionLevelForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)eapTypeForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)authTypeForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setVPNGrade:(id)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(id)vpnGradeForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)vpnGradeNameForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)setVPNType:(CFStringRef)arg1 forSpecifier:(id)arg2  { %log; %orig; }
-(CFStringRef)vpnTypeForSpecifier:(id)arg1  { %log; CFStringRef r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)usernameForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)displayNameForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)serverForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)passwordForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)sharedSecretForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)ciscoCertificateForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)groupDisplayNameForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)localIdentifierForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)remoteIdentifierForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)usesCertificatesForSpecifier:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)statusForConnection:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(id)typeForConnection:(id)arg1  { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setEditButton:(PSSpecifier *)arg1  { %log; %orig; }
-(void)cancelButtonClicked:(id)arg1  { %log; %orig; }
-(void)editButtonTapped:(id)arg1  { %log; %orig; }
//-(PSSpecifier *)editButton { %log; PSSpecifier * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setLocalIdentifier:(NSString *)arg1  { %log; %orig; }
//-(void)setServer:(NSString *)arg1  { %log; %orig; }
//-(NSString *)serviceID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSString *)proxyServer { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSString *)proxyPort { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setProxyServer:(NSString *)arg1  { %log; %orig; }
//-(void)setProxyPort:(NSString *)arg1  { %log; %orig; }
//-(void)setProxyType:(unsigned long long)arg1  { %log; %orig; }
//-(NSString *)proxyUsername { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(NSString *)proxyPassword { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(BOOL)passwordRequired { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setPasswordRequired:(BOOL)arg1  { %log; %orig; }
//-(void)setProxyUsername:(NSString *)arg1  { %log; %orig; }
//-(void)setProxyPassword:(NSString *)arg1  { %log; %orig; }
//-(void)setDisplayName:(NSString *)arg1  { %log; %orig; }
//-(BOOL)editMode { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
//-(void)setEditMode:(BOOL)arg1  { %log; %orig; }
//-(void)setAppName:(NSString *)arg1  { %log; %orig; }
//-(unsigned long long)proxyType { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
//-(NSString *)appName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(UIBarButtonItem *)backButton { %log; UIBarButtonItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setAccount:(NSString *)arg1  { %log; %orig; }
//-(NSString *)account { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//-(void)setEncryptionType:(unsigned long long)arg1  { %log; %orig; }
//-(unsigned long long)encryptionType { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
%end
