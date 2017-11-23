%hook MMTabBarController
//- (void).cxx_destruct { %log; %orig; }
- (void)addDoubleTapGesture { %log; %orig; }
- (void)bringBadgeViewsToFront { %log; %orig; }
- (id)currentViewController { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getBadgeViewForIndex:(long long)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (int)getBadgeViewRightMarginPortrait { %log; int r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)getBadgeViews { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getTabBarBtnForIndex:(long long)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getTabBarBtnViews { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getViewControllerAtIndex:(unsigned int)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)handleDoubleTapGesture:(id)arg1 { %log; %orig; }
- (void)hideTabBar { %log; %orig; }
- (void)hideTabBarForIndex:(long long)arg1 { %log; %orig; }
- (void)hideTabBarWithNoViewHeightUpdateForIndex:(long long)arg1 { %log; %orig; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)makeSureFrame { %log; %orig; }
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4 { %log; %orig; }
- (void)reLayoutTabbarToOrientation:(long long)arg1 { %log; %orig; }
- (void)relayoutBadgeViewForIpadIOS8 { %log; %orig; }
- (void)removeDoubleTapGesture { %log; %orig; }
- (void)setAllTabBarItemEnabled:(_Bool)arg1 { %log; %orig; }
- (void)setSelectedIndex:(unsigned long long)arg1 { %log; %orig; }
- (void)setSelectedViewController:(id)arg1 { %log; %orig; }
- (void)setTabBarBadgeImage:(id)arg1 forIndex:(unsigned int)arg2 { %log; %orig; }
- (void)setTabBarBadgeString:(id)arg1 forIndex:(long long)arg2 { %log; %orig; }
- (void)setTabBarBadgeValue:(long long)arg1 forIndex:(long long)arg2 { %log; %orig; }
- (void)setViewControllers:(id)arg1 { %log; %orig; }
- (void)setViewControllers:(id)arg1 animated:(_Bool)arg2 { %log; %orig; }
- (void)showTabBar { %log; %orig; }
- (void)showTabBarForIndex:(long long)arg1 { %log; %orig; }
- (void)showTabBarWithNoViewHeightUpdateForIndex:(long long)arg1 { %log; %orig; }
- (unsigned long long)supportedInterfaceOrientations { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)viewDidAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewDidLayoutSubviews { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (void)viewWillAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewWillLayoutSubviews { %log; %orig; }
- (void)willAnimateRotationToInterfaceOrientation:(long long)arg1 duration:(double)arg2 { %log; %orig; }
//- (void)setDelegate:(__weak id <MMTabBarControllerDelegate> )delegate { %log; %orig; }
//- (__weak id <MMTabBarControllerDelegate> )delegate { %log; __weak id <MMTabBarControllerDelegate>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
%end
