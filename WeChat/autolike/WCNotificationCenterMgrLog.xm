%hook WCNotificationCenterMgr
//- (void)setM_delegate:(__weak id <WCNotificationCenterMgrDelegate> )m_delegate { %log; %orig; }
//- (__weak id <WCNotificationCenterMgrDelegate> )m_delegate { %log; __weak id <WCNotificationCenterMgrDelegate>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
//- (void)setM_database:(MyWCDB *)m_database { %log; %orig; }
//- (MyWCDB *)m_database { %log; MyWCDB * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void).cxx_destruct { %log; %orig; }
- (void)deleteMessage:(id)arg1 { %log; %orig; }
- (void)deleteAllMessages { %log; %orig; }
- (void)markMessageAllReadBeginWithMessage:(id)arg1 { %log; %orig; }
- (void)markMessageListRead:(id)arg1 { %log; %orig; }
- (void)markMessageRead:(id)arg1 { %log; %orig; }
- (id)getMessageFrom:(id)arg1 maxCount:(unsigned int)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getAllMessages { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getUnReadMessagesLimit:(int)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getUnReadMessages { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getLatestReadMessage { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)getLastUnReadMessage { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned int)getUnReadMessageCount { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (id)getLastWCObject { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)NotifyCmd:(id)arg1 { %log; %orig; }
- (void)NotifyCheckSelector { %log; %orig; }
- (void)saveSetting { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
