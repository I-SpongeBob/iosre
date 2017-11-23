%hook ContactInfoViewController
//- (void).cxx_destruct { %log; %orig; }
- (unsigned int)GetFromScene { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)MessageReturn:(id)arg1 Event:(unsigned int)arg2 { %log; %orig; }
- (void)alertView:(id)arg1 clickedButtonAtIndex:(long long)arg2 { %log; %orig; }
- (void)bindPhoneReturn { %log; %orig; }
- (void)checkNeedForcedUpdateForMemberDetail { %log; %orig; }
- (void)confirmExpose:(unsigned int)arg1 { %log; %orig; }
- (void)contactVerifyOk:(id)arg1 { %log; %orig; }
- (void)copyContactField:(id)arg1 toContact:(id)arg2 { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (void)delAllMsg { %log; %orig; }
- (void)doReset { %log; %orig; }
- (id)getContactVerifyLogic { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getCurrentViewController { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getSearchId { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getUserData { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getViewController { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)initSystemPluginData:(int)arg1 { %log; %orig; }
- (id)initWithTitle:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (_Bool)isInMyContactList { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)jumpToContentViewController:(id)arg1 { %log; %orig; }
//- (void)setM_InfoDelegate:(__weak id <ContactInfoViewControllerDelegate> )m_InfoDelegate { %log; %orig; }
//- (__weak id <ContactInfoViewControllerDelegate> )m_InfoDelegate { %log; __weak id <ContactInfoViewControllerDelegate>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
- (void)setM_bPopToRootWhenDelete:(_Bool )m_bPopToRootWhenDelete { %log; %orig; }
- (_Bool )m_bPopToRootWhenDelete { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (void)setM_chatContact:(CContact *)m_chatContact { %log; %orig; }
//- (CContact *)m_chatContact { %log; CContact * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_contact:(CContact *)m_contact { %log; %orig; }
//- (CContact *)m_contact { %log; CContact * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_delegate:(__weak id <contactInfoDelegate> )m_delegate { %log; %orig; }
//- (__weak id <contactInfoDelegate> )m_delegate { %log; __weak id <contactInfoDelegate>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
- (void)setM_nsLocation:(NSString *)m_nsLocation { %log; %orig; }
- (NSString *)m_nsLocation { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_popToViewControllerClassWhenDelete:(Class )m_popToViewControllerClassWhenDelete { %log; %orig; }
- (Class )m_popToViewControllerClassWhenDelete { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_qrCodeAddFriendScene:(int )m_qrCodeAddFriendScene { %log; %orig; }
- (int )m_qrCodeAddFriendScene { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_searchScene:(int )m_searchScene { %log; %orig; }
- (int )m_searchScene { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_uiAddFriendStatScene:(int )m_uiAddFriendStatScene { %log; %orig; }
- (int )m_uiAddFriendStatScene { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_uiFromScene:(unsigned int )m_uiFromScene { %log; %orig; }
- (unsigned int )m_uiFromScene { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVerify:(unsigned int )m_uiVerify { %log; %orig; }
- (unsigned int )m_uiVerify { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_userData:(id )m_userData { %log; %orig; }
- (id )m_userData { %log; id  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)onAddToContact { %log; %orig; }
- (void)onDeleteContact:(id)arg1 { %log; %orig; }
- (void)onExpose { %log; %orig; }
- (_Bool)onFilterSendReceiver:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)onFriendRequestSend { %log; %orig; }
- (void)onModifyContact:(id)arg1 { %log; %orig; }
- (void)onNewMessage:(id)arg1 { %log;%orig; }
- (void)onNewMessageWithPushOnTop:(id)arg1 { %log; %orig; }
- (void)onPopViewController:(_Bool)arg1 { %log; %orig; }
- (void)onProfileChange { %log; %orig; }
- (void)onRemoveContact { %log; %orig; }
- (void)onSayHello { %log; %orig; }
- (void)onSayHelloViewSendSayHello:(id)arg1 { %log; %orig; }
- (void)onSendVerifyMsg { %log; %orig; }
- (void)onShareMyFriend { %log; %orig; }
- (void)onStrangerContactUpdated:(id)arg1 { %log; %orig; }
- (void)onTalk:(id)arg1 { %log; %orig; }
- (void)onVerifyOK { %log; %orig; }
- (void)onVerifyOKWithContact:(id)arg1 { %log; %orig; }
- (void)onWCGroupAddMemberReturn:(_Bool)arg1 group:(id)arg2 { %log; %orig; }
- (void)onWCGroupModMemberReturn:(_Bool)arg1 group:(id)arg2 { %log; %orig; }
- (void)onWCGroupRemoveMemberReturn:(_Bool)arg1 group:(id)arg2 { %log; %orig; }
- (void)reloadContactAssist { %log; %orig; }
- (void)reloadData { %log; %orig; }
- (void)reloadFloatView { %log; %orig; }
- (void)reloadView { %log; %orig; }
- (void)setReportInfo:(NSString *)reportInfo { %log; %orig; }
- (NSString *)reportInfo { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setSearchExtraParamsString:(NSString *)searchExtraParamsString { %log; %orig; }
- (NSString *)searchExtraParamsString { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setSearchFromIndex:(unsigned int )searchFromIndex { %log; %orig; }
- (unsigned int )searchFromIndex { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setSearchId:(NSString *)searchId { %log; %orig; }
- (NSString *)searchId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setSearchKeyword:(NSString *)searchKeyword { %log; %orig; }
- (NSString *)searchKeyword { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setSourceMsg:(CMessageWrap *)sourceMsg { %log; %orig; }
//- (CMessageWrap *)sourceMsg { %log; CMessageWrap * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setVerifyUserInfoList:(NSMutableDictionary *)verifyUserInfoList { %log; %orig; }
- (NSMutableDictionary *)verifyUserInfoList { %log; NSMutableDictionary * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)startLoadingWithText:(id)arg1 { %log; %orig; }
- (void)statBanner { %log; %orig; }
- (void)stopLoadingWithFailText:(id)arg1 { %log; %orig; }
- (void)stopLoadingWithOKText:(id)arg1 { %log; %orig; }
- (id)tagForActivePage { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)tagForCurrentPage { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)updateContactFromServer { %log; %orig; }
- (void)viewDidAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewDidDisappear:(_Bool)arg1 { %log; %orig; }
- (void)viewDidLayoutSubviews { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (void)viewWillAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewWillBePoped:(_Bool)arg1 { %log; %orig; }
- (void)viewWillDisappear:(_Bool)arg1 { %log; %orig; }
- (void)viewWillLayoutSubviews { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
