%hook ContactsViewController
//- (void).cxx_destruct { %log; %orig; }
- (long long)ConvertToNormalContactSection:(long long)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
//- (_Bool)HasBindPhoneTip { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (_Bool)HasBrandGroup { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (_Bool)HasEnterpriseBrandGroup { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (_Bool)HasHelloGroup { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (_Bool)HasWechatOutGroup { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)MMVoiceSearchBar:(id)arg1 textDidChange:(id)arg2 { %log; %orig; }
- (void)MMVoiceSearchBarCancelButtonClicked:(id)arg1 { %log; %orig; }
- (void)MMVoiceSearchBarSearchButtonClicked:(id)arg1 { %log; %orig; }
- (_Bool)MMVoiceSearchBarShouldBeginEditing:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)OnSayHelloDataChange { %log; %orig; }
- (void)OnVoiceSearchButtonDown { %log; %orig; }
- (void)SearchBarBecomeActive { %log; %orig; }
- (void)SearchBarBecomeUnActive { %log; %orig; }
- (void)addBlurEffectView { %log; %orig; }
- (void)addRedDotInGroupCell:(id)arg1 existNewBrand:(_Bool)arg2 { %log; %orig; }
- (void)applySearchBeginAnimation:(id)arg1 { %log; %orig; }
- (void)bindPhoneReturn { %log; %orig; }
- (void)cancelSearch { %log; %orig; }
- (void)checkDBAutoRecover { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (void)didAppear { %log; %orig; }
- (void)didReceiveMemoryWarning { %log; %orig; }
- (void)displayControllerSetActive:(_Bool)arg1 animated:(_Bool)arg2 { %log; %orig; }
- (void)doSearch:(id)arg1 Pre:(_Bool)arg2 { %log; %orig; }
- (void)finishSearchBarImmediately { %log; %orig; }
- (double)getMainTableHeight { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
//- (unsigned int)getSectionType:(long long)arg1 { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (id)getVCWithDeepLinkName:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getViewController { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)handleSelectEnterpriseBrand:(unsigned long long)arg1 { %log; %orig; }
- (void)handleSelectdBindPhone { %log; %orig; }
- (void)handleSelectdBrandGroup:(long long)arg1 { %log; %orig; }
- (void)handleSelectdChatRoom { %log; %orig; }
- (void)handleSelectdContactTag { %log; %orig; }
- (void)handleSelectdHelloGroup { %log; %orig; }
- (void)handleSelectdHelloGroup:(unsigned long long)arg1 { %log; %orig; }
- (void)handleSelectedWechatOut { %log; %orig; }
- (_Bool)hasShowSearchBar { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (void)setHasWechatOut:(_Bool )hasWechatOut { %log; %orig; }
//- (_Bool )hasWechatOut { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)hideSearchBar { %log; %orig; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)initBarItem { %log; %orig; }
- (void)initCountLabel:(id)arg1 { %log; %orig; }
- (void)initData { %log; %orig; }
- (void)initDeepLinkConfig { %log; %orig; }
- (void)initSearchBar { %log; %orig; }
//- (void)initTableView { %log; %orig; }
- (void)initTitleArea { %log; %orig; }
- (void)initView { %log; %orig; }
- (_Bool)isSeachActive { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)loadHeaderViewSelection { %log; %orig; }
- (void)setM_brandContactGroupList:(NSMutableArray *)m_brandContactGroupList { %log; %orig; }
- (NSMutableArray *)m_brandContactGroupList { %log; NSMutableArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)makeBindPhoneCell:(id)arg1 { %log; %orig; }
- (void)makeCell:(id)arg1 tableCell:(id)arg2 section:(unsigned long long)arg3 row:(unsigned long long)arg4 { %log; %orig; }
- (void)makeChatRoomCell:(id)arg1 { %log; %orig; }
- (void)makeContactTagCell:(id)arg1 { %log; %orig; }
- (void)makeEnterpriseBrandCell:(id)arg1 row:(long long)arg2 { %log; %orig; }
- (void)makeGroupCell:(id)arg1 head:(id)arg2 title:(id)arg3 { %log; %orig; }
- (void)makeHelloGroupCell:(id)arg1 { %log; %orig; }
- (void)makeHelloGroupCell:(id)arg1 row:(unsigned long long)arg2 { %log; %orig; }
- (void)makeNewUserTipCell:(id)arg1 { %log; %orig; }
- (void)makeWechatOutCell:(id)arg1 { %log; %orig; }
- (long long)mmcurrentIndexForTableView:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
//- (id)mmsectionIndexTitlesForTableView:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (long long)mmtableView:(id)arg1 sectionForSectionIndexTitle:(id)arg2 atIndex:(long long)arg3 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (long long)numberOfCellForBrandGroup { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (long long)numberOfCellForEnterpriseBrandGroup { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (long long)numberOfSectionsInTableView:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)onAddContact { %log; %orig; }
- (void)onContactsDataChange { %log; %orig; }
- (_Bool)onFilterContactCandidate:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)onFriendAssistUnreadCountChanged { %log; %orig; }
- (void)onMainWindowFrameChanged { %log; %orig; }
- (void)onShowAddContact:(_Bool)arg1 { %log; %orig; }
- (void)openContactInfoView:(int)arg1 { %log; %orig; }
- (void)reLayoutSubviews { %log; %orig; }
- (void)removeContactsTip { %log; %orig; }
- (void)resetTableViewOffset:(id)arg1 { %log; %orig; }
- (void)resetViewStatus { %log; %orig; }
- (void)scrollViewDidScroll:(id)arg1 { %log; %orig; }
- (void)searchDisplayControllerDidBeginSearch:(id)arg1 { %log; %orig; }
- (void)searchDisplayControllerWillBeginSearch:(id)arg1 { %log; %orig; }
- (void)searchDisplayControllerWillEndSearch:(id)arg1 { %log; %orig; }
- (void)setSearchTableResultText:(id)arg1 { %log; %orig; }
- (void)setUIEventEnabled:(_Bool)arg1 { %log; %orig; }
- (_Bool)shouldShowTabbar { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)showContactInfoView:(id)arg1 { %log;NSLog(@"%@",[arg1 class]) ;%orig; }
//- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)tableView:(id)arg1 commitEditingStyle:(long long)arg2 forRowAtIndexPath:(id)arg3 { %log; %orig; }
/*- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2 { %log; %orig; }
- (long long)tableView:(id)arg1 editingStyleForRowAtIndexPath:(id)arg2 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2 { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2 { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (id)tableView:(id)arg1 titleForHeaderInSection:(long long)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3 { %log; %orig; }
*/
- (void)tryHideSearchGuideView { %log; %orig; }
- (void)tryInitViewOfSearchController { %log; %orig; }
- (void)updateCount { %log; %orig; }
- (void)updateEnterpriseBrandItemCell:(id)arg1 contact:(id)arg2 { %log; %orig; }
- (void)updateHelloGroup { %log; %orig; }
- (void)updateNewContactsItemCell:(id)arg1 contact:(id)arg2 { %log; %orig; }
- (void)updateTabBarBadge { %log; %orig; }
- (void)updateViewWhenSelectTab:(_Bool)arg1 { %log; %orig; }
- (void)viewDidAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewDidDisappear:(_Bool)arg1 { %log; %orig; }
- (void)viewDidLayoutSubviews { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (void)viewDidPop:(_Bool)arg1 { %log; %orig; }
- (void)viewWillAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewWillDisappear:(_Bool)arg1 { %log; %orig; }
- (void)willAppear { %log; %orig; }
- (void)willDisshow { %log; %orig; }
- (void)willShow { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
#import "qq.h"
%hook NewMainFrameViewController
- (void)viewDidAppear:(BOOL)animated {
    %log;
    %orig;
    CContactMgr *con = [[%c(CContactMgr) alloc] init];
    CContact *contact  = (CContact *)[con getContactByName:@"kelekaka90"];
    
    NSLog(@"give me value----%@", contact);
    ContactInfoViewController *contactViewController = [[objc_getClass("ContactInfoViewController") alloc] init];
        [contact setM_nsUsrName:@"kelekaka90"];
        [contact setM_nsAntispamTicket:@"v2_7780e774be6ffb56ae41023d9b4f8f4d2855705b2358b3fe16388a07ce1b8b557f647d864d7721838969e7a7a7603a80@stranger"];
        [contact setM_bFromNewDB:1];
        [contact setM_uiType:0];
        [contact setM_uiFriendScene:3];
        [contactViewController setM_contact:contact];
        [contactViewController setM_uiFromScene: 6];
        [contactViewController setM_uiAddFriendStatScene:2];
        [contactViewController updateContactFromServer];
        [contactViewController checkNeedForcedUpdateForMemberDetail];
    UITabBarController *rootViewController = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    UINavigationController *mmNavigation = (UINavigationController *)[rootViewController selectedViewController];
    [mmNavigation  pushViewController:contactViewController animated:YES];
}
%end
