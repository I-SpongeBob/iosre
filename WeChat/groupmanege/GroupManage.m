//
//  GroupManage.m
//  GroupManage
//
//  Created by 谢如昕 on 2017/11/6.
//  Copyright © 2017年 Lingyongqian. All rights reserved.
//

#import "GroupManage.h"

@implementation GroupManage
//自动建群
-(void)start{
    MMServiceCenter* serviceCenter = [[NSClassFromString(@"MMServiceCenter") class] defaultCenter];
    CGroupMgr *cgroupMgr = [serviceCenter getService:[NSClassFromString(@"CGroupMgr") class]];
    NSMutableArray *members = [NSMutableArray array];//邀请的好友的username存放处,也可通过已有联系人初始化
    CContactMgr *contactManager = [serviceCenter getService:[NSClassFromString(@"CContactMgr") class]];
    NSSet *contactSet=[contactManager getAllContactUserName];//小bug 可能有删除过的好友
    NSMutableArray *contactArr= (NSMutableArray*)[contactSet allObjects];
    NSLog(@"2222222222%@",contactArr);
    [members addObject:@"g1193266394"];
    NSLog(@"2222222222%@",members);
    for(NSInteger i=0;i<[contactArr count];i++)
    {
    [members addObject:[contactArr objectAtIndex:i]];
    }
    NSLog(@"33333333333%@",members);
    NSMutableArray *friendArr = [NSMutableArray array];
    for(NSInteger i=0;i<30;i++)
    {
        GroupMember *member = [[NSClassFromString(@"GroupMember") alloc] init];
       // [member setValue:[members objectAtIndex:i] forKey:@"m_nsMemberName"];
        member.m_nsMemberName=[members objectAtIndex:i];
        [friendArr addObject:member];
    }
    NSLog(@"friendArr%@",friendArr);
    [cgroupMgr CreateGroup:nil withMemberList:friendArr];
}
@end
