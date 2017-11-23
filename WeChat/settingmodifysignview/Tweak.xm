%hook SettingModifySignViewController
//- (void).cxx_destruct { %log; %orig; }
- (void)OnCancel { %log; %orig; }
- (void)OnReturn { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (void)initTableView { %log; %orig; }
//- (void)setM_delegate:(__weak id <settingModifySignDelegate> )m_delegate { %log; %orig; }
//- (__weak id <settingModifySignDelegate> )m_delegate { %log; __weak id <settingModifySignDelegate>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
- (void)setM_nsLastSign:(NSString *)m_nsLastSign { %log; %orig; }
- (NSString *)m_nsLastSign { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (long long)numberOfSectionsInTableView:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)oplogRet:(int)arg1 errMsg:(id)arg2 eventID:(unsigned int)arg3 cgiWrap:(id)arg4 { %log; %orig; }
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2 { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2 { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (_Bool)textView:(id)arg1 shouldChangeTextInRange:(struct _NSRange)arg2 replacementText:(id)arg3 { %log;NSLog(@"%@",[arg3 class]); _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)textViewDidChange:(id)arg1 { %log; %orig; }
- (void)updateWordCount:(int)arg1 { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
