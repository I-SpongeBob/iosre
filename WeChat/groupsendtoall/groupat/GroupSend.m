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
-(void)start:(id)arg1 MsgWrap:(CMessageWrap *)wrap{
    NSLog(@"time ===%ld",(unsigned long)wrap.m_uiCreateTime);
    
    int type = wrap.m_uiMessageType;
    NSString *knFromUser = wrap.m_nsFromUsr;
    NSString *knToUsr = wrap.m_nsToUsr;
    NSString *knContent = wrap.m_nsContent;
    NSString *knSource = wrap.m_nsMsgSource;
    NSString *message = [NSString stringWithFormat:@"type=%d--knFromUser=%@--knToUsr=%@--knContent=%@--knSource=%@",type,knFromUser,knToUsr,knContent,knSource];
    
    MMServiceCenter* serviceCenter = [[NSClassFromString(@"MMServiceCenter") class] defaultCenter];
    CContactMgr *contactManager = [serviceCenter getService:[NSClassFromString(@"CContactMgr") class]];
    CContact *selfContact = [contactManager getSelfContact];
    NSLog(@"wrap =====  %@,=====%@",wrap.m_nsContent,wrap);
    NSLog(@"message =======  %@",message);
    
    if (type == 1){
        
        if ([knFromUser isEqualToString:selfContact.m_nsUsrName]) {
            
            if ([knToUsr hasSuffix:@"@chatroom"])
            {
                NSLog(@"selfContact ==== %@",selfContact);
                if( knSource == nil){
                    NSString *aaa = [selfContact.m_nsUsrName stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
                    NSLog(@"length=%lu,%@",(unsigned long)aaa.length,aaa);
                    NSArray *result = (NSArray *)[[NSClassFromString(@"CContact") class] getChatRoomMemberWithoutMyself:knToUsr];
                    [result count];
                    
                    
                    
                    if ([knContent hasPrefix:@"#所有人"]){ // 前缀要求
                        
                        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        MMMsgLogicManager *mmMsgLogicManager=[serviceCenter getService:[NSClassFromString(@"MMMsgLogicManager") class]];
                        BaseMsgContentLogicController *baseMsgContentLogicController=[mmMsgLogicManager valueForKey:@"_topLogicController"];
                        RoomContentLogicController *roomContentLogicController=(RoomContentLogicController*)
                        baseMsgContentLogicController;
                        NSLog(@"roomContentLogicController==%@",roomContentLogicController);
                        for(int i=0;i<[result count];i++)
                        {
                            [roomContentLogicController didSelectContact:[[[NSClassFromString(@"CContact") class] getChatRoomMemberWithoutMyself:knToUsr] objectAtIndex:i]];
                        }
                        });
                        
                        
                        
                        
                        
                        
                        
                        
//                        NSString *subStr = [knContent substringFromIndex:4];
//
//
//                        NSMutableString *string = [NSMutableString string];
//                        [result enumerateObjectsUsingBlock:^(CContact *obj, NSUInteger idx, BOOL * _Nonnull stop) {
//
//                            [string appendFormat:@",%@",obj.m_nsUsrName];
//                        }];
//
//
//                        NSString *sourceString = [string substringFromIndex:1];
//                        wrap.m_uiStatus = 3;
//
//                        NSString *string1=[NSString string];
//                        for(int i=0;i<[result count];i++)
//                        {
//
//                            NSString *string2=@"@";
//                            string1 =[string1 stringByAppendingString:string2];
//                        }
//                        wrap.m_nsContent = [string1 stringByAppendingString:subStr];
//                        wrap.m_nsMsgSource = [NSString stringWithFormat:@"<msgsource><atuserlist>%@</atuserlist></msgsource>",sourceString];
//
//
//                        int type2 = wrap.m_uiMessageType;
//                        NSString *knFromUser2 = wrap.m_nsFromUsr;
//                        NSString *knToUsr2 = wrap.m_nsToUsr;
//                        NSString *knContent2 = wrap.m_nsContent;
//                        NSString *knSource2 = wrap.m_nsMsgSource;
//                        NSString *message2 = [NSString stringWithFormat:@"type=%d--knFromUser=%@--knToUsr=%@--knContent=%@--knSource=%@",type2,knFromUser2,knToUsr2,knContent2,knSource2];
//
//                        NSLog(@"message2 =======  %@",message2);
//                    }
                    
                }
                           }
                
                
            }
            
        }
    }
}

@end
