#import "qq.h"


%hook WCListViewController
//- (void).cxx_destruct { %log; %orig; }
- (void)actionSheet:(id)arg1 clickedButtonAtIndex:(long long)arg2 { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (void)didReceiveMemoryWarning { %log; %orig; }
- (void)forceReload { %log; %orig; }
- (void)initBarItem { %log; %orig; }
- (void)initData:(_Bool)arg1 { %log; %orig; }
- (void)setM_contact:(CContact *)m_contact { %log; %orig; }
- (CContact *)m_contact { %log; CContact * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)onDissmiss { %log; %orig; }
- (void)onHomepageUpdate:(int)arg1 withAdded:(id)arg2 andChanged:(id)arg3 andDeleted:(id)arg4 { %log; %orig; }
- (void)onNetworkActivityStatusChanged { %log; %orig; }
- (void)onOperate:(id)arg1 { %log; %orig; }
- (void)refreshFooter { %log; %orig; }
- (void)refreshHeader { %log; %orig; }
- (void)reloadData { %log; %orig; }
- (void)reloadStyle { %log; %orig; }
- (void)updateNetworkStatus { %log; %orig; }
- (void)viewDidAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewDidLayoutSubviews { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (void)viewDidTransitionToNewSize { %log; %orig; }
- (void)viewWillDisappear:(_Bool)arg1 { %log; %orig; }
- (void)willAppear { %log; %orig; }
- (void)willDisappear { %log; %orig; }
- (void)willDisshow { %log; %orig; }
- (void)willShow { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
