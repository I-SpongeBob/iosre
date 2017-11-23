//
//  test.m
//  
//
//  Created by 谢如昕 on 2017/9/19.
//
//

#import <Foundation/Foundation.h>
#import "Task.h"
#import "qq.h"

@implementation Task
{
    NSTimer *nsTimer;
}
-(void)start{
    UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
    NSLog(@"------------%@",rootViewController);
    [self getloginID];
    [self getpsw];
    [self getloginMode];
    NSLog(@"%@",_loginMode?@"YES":@"NO");
    if([rootViewController isKindOfClass:[NSClassFromString(@"WCAccountLoginFirstViewController") class]])
    {
       dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        WCAccountLoginControlLogic *wcAccountLoginControlLogic=[rootViewController valueForKey:@"m_delegate"];
        
        [wcAccountLoginControlLogic onFirstViewLogin];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if(self.loginMode==0)
        {
            [self secondUI];
        }
        else
        {
            UIViewController* topVC = [UIApplication sharedApplication].keyWindow.rootViewController;
            UIViewController* rootViewController =topVC.presentedViewController;
            WCAccountFillPhoneViewController *wcAccountFillPhoneViewController=[rootViewController valueForKey:@"visibleViewController"];
            WCAccountPhoneLoginControlLogic *wcAccountPhoneLoginControlLogic=[wcAccountFillPhoneViewController valueForKey:@"m_delegate"];
            [wcAccountPhoneLoginControlLogic onFillPhoneLoginByQQ];
            [self thirdUI];
        }
           });
       });
    }
    
    else if([rootViewController isKindOfClass:[NSClassFromString(@"WCAccountLoginLastUserViewController") class]]||[rootViewController isKindOfClass:[NSClassFromString(@"MMUINavigationController") class]])
    {
        NSLog(@"%@",rootViewController);
        [self login];
    }
    else if([rootViewController isKindOfClass:[NSClassFromString(@"MMTabBarController") class]])
    {
        [self quit];
    }
}
//获取账号
- (void)getloginID{
    self.loginID=@"x513478557";
}
//获取密码
- (void)getpsw{
    self.psw=@"xrx513478557";
}
//登陆
- (void)login{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self getloginMode];
        [self firstUI];
    });
}
//先退出，后登陆
- (void)quit{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
        MMTabBarController *mmTabBarConteoller=(MMTabBarController*)rootViewController;
        MMUINavigationController *mmUINavigatinController=[mmTabBarConteoller getViewControllerAtIndex:3];
        [mmTabBarConteoller setSelectedViewController:mmUINavigatinController];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        MoreViewController *moreViewController=[mmUINavigatinController valueForKey:@"visibleViewController"];
        [moreViewController showSettingView];
        NSLog(@"mmUINavigatinController %@",mmUINavigatinController);
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NewSettingViewController *newSettingViewcontroller =[mmUINavigatinController valueForKey:@"visibleViewController"];
        NSLog(@"NewSettingViewController %@",newSettingViewcontroller);
        [newSettingViewcontroller tryQuit];
        NSLog(@"quiting");
        sleep(3);
        NSLog(@"logining");
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            nsTimer=[NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(action) userInfo:nil repeats:YES];
            NSLog(@"loginingggggggggggg");
            });
    });
    });
    });
}
//定时器判断当前controller，退出完成后停止计时器
-(void)action{
    UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
    NSLog(@"________________________________%@",rootViewController);
    if([rootViewController isKindOfClass:[NSClassFromString(@"WCAccountLoginLastUserViewController") class]])
    {
        [nsTimer invalidate];
        nsTimer=nil;
        [self login];
    }
}
//判断输入模式，手机号登录为0，微信号登录为1
- (void)getloginMode{
    unichar c=[_loginID characterAtIndex:0];
    if(c<'9'&&c>'0')
    {
        self.loginMode=0;
    }
    else
    {
        self.loginMode=1;
    }
}
//登陆中第一个界面操作，切换登陆账号
- (void)firstUI{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
        WCAccountLoginLastUserViewController *wcAccountLoginLastUserViewController=(WCAccountLoginLastUserViewController *)rootViewController;
        NSLog(@"%@",wcAccountLoginLastUserViewController);
        UIView *view=[wcAccountLoginLastUserViewController view];
        NSLog(@"%@",view);
        UIButton *button=[[view subviews] objectAtIndex:1];
        [wcAccountLoginLastUserViewController onMore:button];
         dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        WCUIActionSheet *window = [[UIApplication sharedApplication].windows lastObject];
        [window dismissWithClickedButtonIndex:0 animated:0];
        if(self.loginMode==NO)
        {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                WCUIActionSheet *window = [[UIApplication sharedApplication].windows lastObject];
                [window dismissWithClickedButtonIndex:0 animated:0];
                [self secondUI];
            });
        }
        else
        {
            NSLog(@"yyyyyyyyyyyyyyyyyy");
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                WCUIActionSheet *window = [[UIApplication sharedApplication].windows lastObject];
                [window dismissWithClickedButtonIndex:1 animated:0];
                [self thirdUI];
            });
        }
         });
    });
}
//手机登录界面操作，输入账号密码
- (void)secondUI{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIViewController* topVC = [UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController* rootViewController =topVC.presentedViewController;
        WCAccountFillPhoneViewController *wcAccountFillPhoneViewController=[rootViewController valueForKey:@"visibleViewController"];
        WCAccountTextFieldItem *m_textFieldPhoneNumberItem=[wcAccountFillPhoneViewController valueForKey:@"m_textFieldPhoneNumberItem"];
        id phoneNumber=self.loginID;
        [m_textFieldPhoneNumberItem setText:phoneNumber];
        WCAccountTextFieldItem *m_textFieldPwdItem=[wcAccountFillPhoneViewController valueForKey:@"m_textFieldPwdItem"];
        id userPwdItem=self.psw;
        [m_textFieldPwdItem setText:userPwdItem];
        [wcAccountFillPhoneViewController onNext];
        [self forthUI];
    });
}
//微信登录界面操作，输入账号密码
- (void)thirdUI{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIViewController* topVC = [UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController* rootViewController =topVC.presentedViewController;
        WCAccountLoginFirstUserViewController *wcAccountLoginFirstUserViewController=[rootViewController valueForKey:@"visibleViewController"];
        WCAccountTextFieldItem *m_textFieldUserNameItem=[wcAccountLoginFirstUserViewController valueForKey:@"m_textFieldUserNameItem"];
        id wechatID=self.loginID;
        [m_textFieldUserNameItem setText:wechatID];
        WCAccountTextFieldItem *m_textFieldPwdItem=[wcAccountLoginFirstUserViewController valueForKey:@"m_textFieldPwdItem"];
        id userPwdItem=self.psw;
        [m_textFieldPwdItem setText:userPwdItem];
        [wcAccountLoginFirstUserViewController onNext];
        [self forthUI];
    });
}
//登陆返回信息，登陆成功打印日志，登录失败打印错误信息
- (void)forthUI{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    UIViewController* topVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController* rootViewController =topVC.presentedViewController;
        if([topVC isKindOfClass:[NSClassFromString(@"MMTabBarController") class]])
        {
            NSLog(@" ------------login succeed");
        }
        else
        {
            UIViewController *uiViewController=[rootViewController valueForKey:@"visibleViewController"];
            NSString *title=[uiViewController valueForKey :@"title"];
            NSLog(@" ------------%@",title);
        }
    });
}
@end
