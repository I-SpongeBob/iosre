//
//  test.m
//  
//
//  Created by 谢如昕 on 2017/9/19.
//
//

#import <Foundation/Foundation.h>
- （void）Start{
    var rootviewcontroller =[[UIWindow keyWindow] rootViewController];
    if(rootviewcontroller==MMUINavigationController)
    {
        UIViewController *c1=[rootviewcontroller valueForKey:@"visibleViewController"];
        UINavigationItem *navigationItem=[self valueForKey:@"navigationItem"];
        UIBarButtonItem *rightBarButtonItem=[navigationItem valueForKey:@"rightBarButtonItem"];
        MMBarButton *m_btn=[rightBarButtonItem valueForKey:@"m_btn"];
        [c1 onMore:m_btn];
        WCUIActionSheet *window = [[UIApplication sharedApplication].windows lastObject];
        WCUIActionSheetLogic *logic=[window valueForKey:@"logic"];
        [logic actionSheet: window clickedButtonAtIndex: 0];
        [window dismissWithClickedButtonIndex:4 animated:1];
        
        
        UIViewController *c2=[rootviewcontroller valueForKey:@"visibleViewController"];
        WCAccountTextFieldItem *_textFieldPhoneNumberItem=[c2 valueForKey:@"_textFieldPhoneNumberItem"];
        id phonenumber=@"18340862300";
        [_textFieldPhoneNumberItem setText:phonenumber];
        [c2 onNext];
        
        
        UIViewController *c3=[rootviewcontroller valueForKey:@"visibleViewController"];
        WCAccountTextFieldItem *_textFieldPwdItem=[c3 valueForKey:@"_textFieldPwdItem"];
        id pwd=@"we88698154";
        [_textFieldPwdItem setText:pwd];
        [c3 onNext];
        
        
        UIViewController *c4=[rootviewcontroller valueForKey:@"visibleViewController"];
        if(c4==UIAlertController)
        {
            NSString *title=[c4 valueForKey :@"title"];
            NSLog(@"%@",title);
        }
        else
        {
            NSLog(@"login succeed");
        }
    }
    
}
