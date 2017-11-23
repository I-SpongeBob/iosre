%hook MMUINavigationController
//- (void).cxx_destruct { %log; %orig; }
- (id)DispatchPopViewControllerAnimated:(_Bool)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)initWithRootViewController:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)layoutViewsForTaskBar { %log; %orig; }
- (id)navigationController:(id)arg1 animationControllerForOperation:(long long)arg2 fromViewController:(id)arg3 toViewController:(id)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)navigationController:(id)arg1 interactionControllerForAnimationController:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)popViewControllerAnimated:(_Bool)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setNavigationBarHidden:(_Bool)arg1 animated:(_Bool)arg2 { %log; %orig; }
- (void)viewDidLoad { %log; %orig; }
- (void)viewWillAppear:(_Bool)arg1 { %log; %orig; }
- (void)viewWillLayoutSubviews { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
