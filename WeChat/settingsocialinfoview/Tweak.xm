%hook SettingSocialInfoViewController
//- (void).cxx_destruct { %log; %orig; }
- (void)MMRegionPickerDidChoosRegion:(id)arg1 { %log; %orig; }
- (void)Save { %log; %orig; }
- (id)getAddressString { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getSexString { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (double)getSignCellHeight { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (void)makeSignCell:(id)arg1 cellInfo:(id)arg2 { %log; %orig; }
- (void)onLinkedIn { %log; %orig; }
- (void)onModifySex:(id)arg1 { %log; NSLog(@"%@",[arg1 class]);%orig; }
- (void)saveNewSign:(id)arg1 { %log; %orig; }
- (void)showModifyAddressView { %log; %orig; }
- (void)showModifySexView { %log; %orig; }
- (void)showModifySignView { %log; %orig; }
- (void)updateTableCell { %log; %orig; }
- (void)viewDidBeDismissed:(_Bool)arg1 { %log; %orig; }
- (void)viewDidBePoped:(_Bool)arg1 { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end

%hook NSStringSelectViewController
//- (void).cxx_destruct { %log; %orig; }
- (void)OnCancel { %log; %orig; }
- (void)OnDone { %log; %orig; }
- (void)OnSelectCell:(id)arg1 { %log; %orig; }
- (void)setBPresentModel:(_Bool )bPresentModel { %log; %orig; }
- (_Bool )bPresentModel { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)initView { %log; %orig; }
- (id)initWithArray:(id)arg1 selected:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setFooterTip:(id)arg1 section:(unsigned int)arg2 { %log; %orig; }
- (void)setOnSelectTarget:(id)arg1 sel:(SEL)arg2 { %log; %orig; }
- (void)updateTableViewWithArray:(id)arg1 selected:(id)arg2 { %log; %orig; }
- (void)viewDidLayoutSubviews { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
%end