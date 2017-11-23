//
// GroupSend.m
//  
//
//  Created by 谢如昕 on 2017/9/19.
//
//

#import <Foundation/Foundation.h>
#import "GroupSend.h"

@implementation GroupSend
- (BaseMsgContentViewController *)currentVC{
    UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
    MMTabBarController *mmTabBarConteoller=(MMTabBarController*)rootViewController;
    MMUINavigationController *mmUINavigatinController=[mmTabBarConteoller getViewControllerAtIndex:0];
    BaseMsgContentViewController *baseMsgContentViewController=[mmUINavigatinController valueForKey:@"visibleViewController"];
    return baseMsgContentViewController;
    
}
-(void)start{
    
    MMServiceCenter* serviceCenter = [[NSClassFromString(@"MMServiceCenter") class] defaultCenter];
    BaseMsgContentViewController *baseMsgContentViewController=[self currentVC];
    
    CContact *toContact=[baseMsgContentViewController GetContact];
    NSArray *result = (NSArray *)[[NSClassFromString(@"CContact") class] getChatRoomMemberWithoutMyself:toContact.m_nsUsrName];
    [result count];
    if([toContact.m_nsUsrName hasSuffix:@"@chatroom"])
    {
        
            MMMsgLogicManager *mmMsgLogicManager=[serviceCenter getService:[NSClassFromString(@"MMMsgLogicManager") class]];
            BaseMsgContentLogicController *baseMsgContentLogicController=[mmMsgLogicManager valueForKey:@"_topLogicController"];
            RoomContentLogicController *roomContentLogicController=(RoomContentLogicController*)
            baseMsgContentLogicController;
            NSLog(@"roomContentLogicController==%@",roomContentLogicController);
            for(int i=0;i<[result count];i++)
            {
                [roomContentLogicController didSelectContact:[[[NSClassFromString(@"CContact") class] getChatRoomMemberWithoutMyself:toContact.m_nsUsrName] objectAtIndex:i]];
            }
        
    }
}

@end
