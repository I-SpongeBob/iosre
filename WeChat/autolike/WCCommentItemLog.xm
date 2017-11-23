%hook WCCommentItem
- (void)setFailedType:(unsigned long long )failedType { %log; %orig; }
- (unsigned long long )failedType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setCommentFlag:(unsigned int )commentFlag { %log; %orig; }
- (unsigned int )commentFlag { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setEndTime:(unsigned long long )endTime { %log; %orig; }
- (unsigned long long )endTime { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setStartTime:(unsigned long long )startTime { %log; %orig; }
- (unsigned long long )startTime { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setClientID:(NSString *)clientID { %log; %orig; }
- (NSString *)clientID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setInQueueTime:(unsigned int )inQueueTime { %log; %orig; }
- (unsigned int )inQueueTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
//- (void)setRefComment:(WCUserComment *)refComment { %log; %orig; }
//- (WCUserComment *)refComment { %log; WCUserComment * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setCreateTime:(unsigned int )createTime { %log; %orig; }
- (unsigned int )createTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setSource:(int )source { %log; %orig; }
- (int )source { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setType:(int )type { %log; %orig; }
- (int )type { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setContent:(NSString *)content { %log; %orig; }
- (NSString *)content { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setItemID:(NSString *)itemID { %log; %orig; }
- (NSString *)itemID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setToUserName:(NSString *)toUserName { %log; %orig; }
- (NSString *)toUserName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void).cxx_destruct { %log; %orig; }
- (id)toServerObject { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)initWithCoder:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)encodeWithCoder:(id)arg1 { %log; %orig; }
%end
