@interface MicroMessengerAppDelegate : NSObject
- (_Bool)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2;
@end

@interface MMUINavigationController : UINavigationController

@end

@interface MMTabBarController: UITabBarController
- (id)getViewControllerAtIndex:(unsigned int)arg1;
- (void)setSelectedViewController:(id)arg1;
@end

@interface WCActionSheet:UIWindow
- (void)dismissWithClickedButtonIndex:(long long)arg1 animated:(_Bool)arg2;
@end

@interface WCUIActionSheet:WCActionSheet
@end

@interface WCUIActionSheetLogic
- (void)actionSheet:(id)arg1 clickedButtonAtIndex:(long long)arg2;
@end

//@interface UIViewController: UIResponder <NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment>
//
//@end

@interface MMBarButton
@end

//@interface UIBarButtonItem:UIBarItem <NSCoding>
//@end

@interface MMBarButtonItem: UIBarButtonItem
@end
//@interface UIWindow
//@end

@interface WCAccountLoginLastUserViewController: UIViewController
- (void)onMore:(id)arg1;
@end

@interface WCAccountFillPhoneViewController: UIViewController
- (void)onNext;
@end

@interface WCAccountLoginFirstUserViewController: UIViewController
- (void)onNext;
@end

//@interface WCAccountMainLoginViewController:UIViewController
//- (void)onNext;
//- (void)onSwitch;
//@end

@interface WCAccountNewPhoneVerifyViewController:UIViewController
- (void)onNext;
@end


@interface MoreViewController : UIViewController
- (void)showSettingView;
@end

@interface NewSettingViewController : UIViewController
- (void)tryQuit;
@end


@interface WCBaseTextFieldItem
- (void)setText:(id)arg1;
@end

@interface WCAccountTextFieldItem : WCBaseTextFieldItem
@end

@interface WCAccountLoginFirstViewController:NSObject
{

}
@end

@interface WCAccountLoginControlLogic
- (void)onFirstViewLogin;
@end

@interface WCAccountPhoneLoginControlLogic
- (void)onFillPhoneLoginByQQ;
@end
