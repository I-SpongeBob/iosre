
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



@interface WCAccountMainLoginViewController:UIViewController
- (void)onNext;
@end

@interface WCBaseTextFieldItem
- (void)setText:(id)arg1;
@end

@interface WCAccountTextFieldItem : WCBaseTextFieldItem
@end

