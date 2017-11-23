#import "qq.h"

%hook WCAccountLoginLastUserViewController
- (void)viewDidLoad{
	%log;
	%orig;

	
//	NSIndexPath *index = [NSIndexPath indexPathForRow:0 inSection:0];

	WCAccountLoginLastUserViewController *vc = self;
	
	UINavigationItem *navigationItem=[self valueForKey:@"navigationItem"];
	UIBarButtonItem *rightBarButtonItem=[navigationItem valueForKey:@"rightBarButtonItem"];
   	MMBarButton *m_btn=[rightBarButtonItem valueForKey:@"m_btn"];
 //     MMBarButton *btn = vc.navigationItem.rightBarButtonItem.m_btn;	
	[vc onMore:m_btn];

	WCUIActionSheet *window = [[UIApplication sharedApplication].windows lastObject];
	WCUIActionSheetLogic *logic=[window valueForKey:@"logic"];
	[logic actionSheet: window clickedButtonAtIndex: 0];
	[window dismissWithClickedButtonIndex:4 animated:1];
}
%end

%hook WCAccountMainLoginViewController
- (void)viewDidLoad{
	%log;
	%orig;
	WCAccountTextFieldItem *_textFieldPhoneNumberItem=[self valueForKey:@"_textFieldPhoneNumberItem"];
	id phonenumber=@"13288698154";
	[_textFieldPhoneNumberItem setText:phonenumber];
	[self onNext];
}
%end

%hook WCAccountNewPhoneVerifyViewController
- (void)viewDidLoad{
	%log;
	%orig;
	WCAccountTextFieldItem *_textFieldPwdItem=[self valueForKey:@"_textFieldPwdItem"];
	id pwd=@"we88698154";
	[_textFieldPwdItem setText:pwd];
	[self onNext];
}
%end

%hook UIAlertController
- (void)viewDidLoad{
	%log;
	%orig;
	
//	BOOL x=[self _hasAppeared];
//	if([x ==@true])
	NSString *title=[self valueForKey :@"title"];
	NSLog(@"%@",title);
        

}
%end