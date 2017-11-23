//
//  "GroupSendAllHelp.h"
//
//
//
//

@interface MMServiceCenter : NSObject
+ (id)defaultCenter;
- (id)getService:(Class)className;
@end


@interface CMessageWrap : NSObject
@property(retain, nonatomic) NSString *m_nsToUsr; // @synthesize m_nsToUsr;
@property(retain, nonatomic) NSString *m_nsFromUsr; // @synthesize m_nsFromUsr;
@property(nonatomic) unsigned int m_uiMessageType; // @synthesize m_uiMessageType;
@property(retain, nonatomic) NSString *m_nsContent; // @synthesize m_nsContent;
@property(nonatomic) unsigned int m_uiMsgFlag; // @synthesize m_uiMsgFlag;
@property(nonatomic) unsigned int m_uiCreateTime; // @synthesize m_uiCreateTime;
@property(retain, nonatomic) NSString *m_nsMsgSource; // @synthesize m_nsMsgSource;
@property(nonatomic) unsigned int m_uiStatus; // @synthesize m_uiStatus;
- (id)initWithMsgType:(long long)arg1;

@end

@interface CMessageMgr : NSObject
- (void)AddMsg:(id)arg1 MsgWrap:(id)arg2;
- (void)AddEmoticonMsg:(id)arg1 MsgWrap:(id)arg2;
- (void)UpdateEmoticonMsg:(id)arg1;
- (void)CheckMessageStatus:(id)arg1 Msg:(id)arg2;
- (void)AsyncOnAddMsg:(id)arg1 MsgWrap:(id)arg2;

@end

@interface CContactMgr
- (id)getSelfContact;
@end
@interface CBaseContact
@property(retain, nonatomic) NSString *m_nsUsrName; // @synthesize m_nsUsrName;
@end

@interface CContact: CBaseContact
+ (id)getChatRoomMemberWithoutMyself:(id)arg1;
@end


