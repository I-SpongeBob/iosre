%hook RoomContactSelectViewController
- (void)setM_bShowIsFriend:(_Bool )m_bShowIsFriend { %log; %orig; }
- (_Bool )m_bShowIsFriend { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bMultiSelect:(_Bool )m_bMultiSelect { %log; %orig; }
- (_Bool )m_bMultiSelect { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bEnableEdit:(_Bool )m_bEnableEdit { %log; %orig; }
- (_Bool )m_bEnableEdit { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bCustomMakeCell:(_Bool )m_bCustomMakeCell { %log; %orig; }
- (_Bool )m_bCustomMakeCell { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bSortByTime:(_Bool )m_bSortByTime { %log; %orig; }
- (_Bool )m_bSortByTime { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bShowSelf:(_Bool )m_bShowSelf { %log; %orig; }
- (_Bool )m_bShowSelf { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bHideSearchBar:(_Bool )m_bHideSearchBar { %log; %orig; }
- (_Bool )m_bHideSearchBar { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_customMemberList:(NSArray *)m_customMemberList { %log; %orig; }
- (NSArray *)m_customMemberList { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_scene:(unsigned int )m_scene { %log; %orig; }
- (unsigned int )m_scene { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
//- (void)setM_chatRoomContact:(CContact *)m_chatRoomContact { %log; %orig; }
//- (CContact *)m_chatRoomContact { %log; CContact * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_bContentOffset:(struct CGPoint )m_bContentOffset { %log; %orig; }
- (struct CGPoint )m_bContentOffset { %log; struct CGPoint  r = %orig; return r; }
- (void)setM_bShowWithGrid:(_Bool )m_bShowWithGrid { %log; %orig; }
- (_Bool )m_bShowWithGrid { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_commonSearchScene:(int )m_commonSearchScene { %log; %orig; }
- (int )m_commonSearchScene { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
//- (void)setM_panelView:(NewContactsSearchPanelView *)m_panelView { %log; %orig; }
//- (NewContactsSearchPanelView *)m_panelView { %log; NewContactsSearchPanelView * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_delegate:(__weak id <RoomContactSelectDelegate> )m_delegate { %log; %orig; }
//- (__weak id <RoomContactSelectDelegate> )m_delegate { %log; __weak id <RoomContactSelectDelegate>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
//- (void)setM_roomContact:(CBaseContact *)m_roomContact { %log; %orig; }
//- (CBaseContact *)m_roomContact { %log; CBaseContact * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void).cxx_destruct { %log; %orig; }
- (void)didSearchViewTableSelect:(id)arg1 { %log; %orig; }
- (double)heightForSearchViewTable:(id)arg1 { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (id)cellForSearchViewTable:(id)arg1 index:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)doSearch:(id)arg1 Pre:(_Bool)arg2 { %log; %orig; }
- (void)didDeleteLastWithKey:(id)arg1 { %log; %orig; }
- (void)didClickImageAtIndex:(unsigned int)arg1 withKey:(id)arg2 { %log; %orig; }
- (void)searchBarSearchButtonClicked:(id)arg1 { %log; %orig; }
- (void)searchBar:(id)arg1 textDidChange:(id)arg2 { %log; %orig; }
- (void)searchBarTextDidBeginEditing:(id)arg1 { %log; %orig; }
- (void)doSearch:(id)arg1 { %log; %orig; }
- (void)onDeleteMember:(id)arg1 { %log; %orig; }
- (void)onDelMemLogicStop:(_Bool)arg1 { %log; %orig; }
- (void)showDelMemView { %log; %orig; }
- (void)setShowRemoveMember { %log; %orig; }
- (void)onAddMemLogicStop:(_Bool)arg1 { %log; %orig; }
- (void)addMember { %log; %orig; }
- (long long)tableView:(id)arg1 sectionForSectionIndexTitle:(id)arg2 atIndex:(long long)arg3 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (id)sectionIndexTitlesForTableView:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)tableView:(id)arg1 titleForHeaderInSection:(long long)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2 { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (void)tableView:(id)arg1 commitEditingStyle:(long long)arg2 forRowAtIndexPath:(id)arg3 { %log; %orig; }
- (long long)tableView:(id)arg1 editingStyleForRowAtIndexPath:(id)arg2 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)tableView:(id)arg1 willDisplayCell:(id)arg2 forRowAtIndexPath:(id)arg3 { %log; %orig; }
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2 { %log; %orig; }
- (void)didSelectContact:(id)arg1 { %log; %orig; }
- (_Bool)useBlackStatusbar { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)getViewController { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)makeCell:(id)arg1 contact:(id)arg2 { %log; %orig; }
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2 { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (long long)numberOfSectionsInTableView:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)onDone { %log; %orig; }
- (void)onCancel:(id)arg1 { %log; %orig; }
- (void)OnDataChange { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)viewDidLayoutSubviews { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (void)initView { %log; %orig; }
- (void)initSearchBar { %log; %orig; }
- (void)initTableView { %log; %orig; }
- (id)getMemberList { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)reloadMemberListAndView { %log; %orig; }
- (void)reloadView { %log; %orig; }
- (void)initData { %log; %orig; }
- (id)getContactWith:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)addContact:(id)arg1 { %log; %orig; }
- (id)addSectionKey:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetCompareStrByContact:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)updateTitleView { %log; %orig; }
- (void)onModifyContact:(id)arg1 { %log; %orig; }
- (void)openContactInfo:(id)arg1 { %log; %orig; }
- (void)loadMemberList { %log; %orig; }
- (void)resortMemList { %log; %orig; }
- (void)reloadProfileGridTableData { %log; %orig; }
- (void)makeMemListSection:(id)arg1 { %log; %orig; }
- (void)makeWhiteCell:(id)arg1 CellInfo:(id)arg2 { %log; %orig; }
- (void)makeMemListCell:(id)arg1 CellInfo:(id)arg2 { %log; %orig; }
- (void)updateMemberView { %log; %orig; }
- (void)updateToNormalStatusEx { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
