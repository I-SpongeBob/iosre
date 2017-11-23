#line 1 "Tweak1.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CContactMgr; @class NewMainFrameViewController; 
static void (*_logos_orig$_ungrouped$NewMainFrameViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$NewMainFrameViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL, BOOL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CContactMgr(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CContactMgr"); } return _klass; }
#line 1 "Tweak1.xm"
#import "qq.h"

static void _logos_method$_ungrouped$NewMainFrameViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL animated) {
    HBLogDebug(@"-[<NewMainFrameViewController: %p> viewDidAppear:%d]", self, animated);
    _logos_orig$_ungrouped$NewMainFrameViewController$viewDidAppear$(self, _cmd, animated);
    CContactMgr *con = [[_logos_static_class_lookup$CContactMgr() alloc] init];
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

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NewMainFrameViewController = objc_getClass("NewMainFrameViewController"); MSHookMessageEx(_logos_class$_ungrouped$NewMainFrameViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$NewMainFrameViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$NewMainFrameViewController$viewDidAppear$);} }
#line 26 "Tweak1.xm"
