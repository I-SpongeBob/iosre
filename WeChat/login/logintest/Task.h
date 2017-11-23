//
//  Task.h
//  
//
//  Created by 谢如昕 on 2017/9/19.
//
//

#ifndef Task_h
#define Task_h

#import <UIKit/UIKit.h>
#import <pthread.h>
#import "qq.h"
//#import "NSObject.h"


@interface Task:NSObject
@property(nonatomic,strong) NSString *loginID;
@property(nonatomic,strong) NSString *psw;
@property(nonatomic) _Bool loginMode;// 为0则为手机号登录，为1则为微信号登录
- (void)getloginID;
- (void)getpsw;
- (void)getloginMode;
- (void)start;
- (void)firstUI;
- (void)secondUI;
- (void)thirdUI;
- (void)forthUI;
- (void)action;
- (void)login;
- (void)quit;
@end


#endif /* Task_h */
