%hook WCAccountLoginFirstViewController
//- (void).cxx_destruct { %log; %orig; }
- (void)adjustTableViewRect { %log; %orig; }
- (void)adjustViewAndNavBarRect { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (void)didRotateFromInterfaceOrientation:(long long)arg1 { %log; %orig; }
- (id)getBackgroundImgWithOrientation:(long long)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (double)getVisibleHeight { %log; double r = %orig; HBLogDebug(@" = %f", r); return r; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)initView { %log; %orig; }
- (void)onChangeLanguage { %log; %orig; }
- (void)onLanguageChange { %log; %orig; }
- (void)setDelegate:(id)arg1 { %log; %orig; }
- (void)updateChangeLanguageBtn { %log; %orig; }
- (void)willAnimateRotationToInterfaceOrientation:(long long)arg1 duration:(double)arg2 { %log; %orig; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
