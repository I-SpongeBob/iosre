//
//  GroupManage.h
//  GroupManage
//
//  Created by 谢如昕 on 2017/11/6.
//  Copyright © 2017年 Lingyongqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroupManage : NSObject

-(void)start;
@end



@interface MMServiceCenter : NSObject
+ (id)defaultCenter;
- (id)getService:(Class)className;
@end


@interface CGroupMgr : NSObject
- (_Bool)AddGroupMember:(id)arg1 withMemberList:(id)arg2 withDesp:(id)arg3;//邀请成员
- (_Bool)CreateGroup:(id)arg1 withMemberList:(id)arg2;//创建群聊
- (_Bool)SetGroupTopic:(id)arg1 withTopic:(id)arg2;

@end

@interface CContactMgr : NSObject
- (id)getAllContactUserName;
- (id)getContactList:(unsigned int)arg1 contactType:(unsigned int)arg2;

@end

@interface CGroupDB : NSObject
- (id)GetGroupMember:(id)arg1;

@end

@interface GroupMember : NSObject
{
    NSString *m_nsMemberName;
}
@property(retain, nonatomic) NSString *m_nsMemberName; // @synthesize m_nsMemberName;
@end

@interface CContact : NSObject

@end

