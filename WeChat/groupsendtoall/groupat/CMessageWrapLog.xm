%hook CMessageWrap
+ (_Bool)isPreViewMsg { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (id)createMaskedThumbImageForMessageWrap:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)GetCdnDownloadPathOfMsgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)GetTempPathOfMesVideoWithMessageWrap:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)GetPathOfMesVideoWithMessageWrap:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMaskedVideoMsgImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMaskedMsgImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMsgImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfVideoMsgImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)GetPathOfMaskedSquareMesImgThumbDir { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)GetPathOfMaskedSquareMesImgThumbDir:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)GetPathOfSquareMesImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMaskedVideoMsgImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMaskedMsgImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMessageImageCache { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getOldPathOfMessageImageCache { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMiddleImgForSender:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMsgImgThumb:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMsgMiddleImgData:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMsgMiddleImg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMsgImgData:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMsgImg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMsgImg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getMsgHDImgData:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getJpgPathOfMsgImg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (_Bool)isVcodec2Img:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (_Bool)MsgImgExist:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (id)getJpgPathOfMsgHDImg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (_Bool)MsgHDImgExist:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (id)getMsgHDImg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMsgVcodec2HDImg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfMsgVcodec2Img:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getPathOfImageMessage:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)getUserNameFromMsgWrap:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (_Bool)isSenderFromMsgWrap:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (_Bool)IsRecordMsg:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (_Bool)SaveMesImg:(id)arg1 MsgWrap:(id)arg2 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (_Bool)SaveMsgThumbWithMsgWrap:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
+ (void)clearLocalMaskedThumbImage:(id)arg1 { %log; %orig; }
+ (void)clearLocalImage:(id)arg1 { %log; %orig; }
+ (id)FormMessageWrapFromAddMsg:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)FormMessageWrapFromBuffer:(id)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (void)initialize { %log; %orig; }
+ (void)GetPathOfAppRemindAttach:(id)arg1 retStrPath:(id *)arg2 { %log; %orig; }
+ (void)GetPathOfAppThumb:(id)arg1 LocalID:(unsigned int)arg2 retStrPath:(id *)arg3 { %log; %orig; }
+ (void)GetPathOfMaskedAppThumb:(id)arg1 LocalID:(unsigned int)arg2 retStrPath:(id *)arg3 { %log; %orig; }
+ (void)GetPathOfAppDataTemp:(id)arg1 LocalID:(unsigned int)arg2 retStrPath:(id *)arg3 { %log; %orig; }
+ (void)GetPathOfAppDataTemp:(id)arg1 LocalID:(unsigned int)arg2 AttachId:(id)arg3 retStrPath:(id *)arg4 { %log; %orig; }
+ (void)GetPathOfAppDataByUserName:(id)arg1 andMessageWrap:(id)arg2 retStrPath:(id *)arg3 { %log; %orig; }
+ (void)GetPathOfAppDataByUserName:(id)arg1 andMessageWrap:(id)arg2 andAttachId:(id)arg3 andAttachFileExt:(id)arg4 retStrPath:(id *)arg5 { %log; %orig; }
+ (void)GetPathOfAppData:(id)arg1 LocalID:(unsigned int)arg2 FileExt:(id)arg3 retStrPath:(id *)arg4 { %log; %orig; }
+ (void)GetPathOfAppImgCacheDir:(id)arg1 retStrPath:(id *)arg2 { %log; %orig; }
+ (void)GetPathOfAppDir:(id)arg1 retStrPath:(id *)arg2 { %log; %orig; }
+ (id)getMessageListStatusImage:(unsigned int)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_dicForwardParas:(NSMutableDictionary *)m_dicForwardParas { %log; %orig; }
- (NSMutableDictionary *)m_dicForwardParas { %log; NSMutableDictionary * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_forwardType:(unsigned int )m_forwardType { %log; %orig; }
- (unsigned int )m_forwardType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_bReceiveMessageSwitchStatus:(unsigned int )m_bReceiveMessageSwitchStatus { %log; %orig; }
- (unsigned int )m_bReceiveMessageSwitchStatus { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_bizMsgMenuID:(NSString *)m_bizMsgMenuID { %log; %orig; }
- (NSString *)m_bizMsgMenuID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_bIsBrandSendMass:(_Bool )m_bIsBrandSendMass { %log; %orig; }
- (_Bool )m_bIsBrandSendMass { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bIsFromBrandSession:(_Bool )m_bIsFromBrandSession { %log; %orig; }
- (_Bool )m_bIsFromBrandSession { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_nsDisplayName:(NSString *)m_nsDisplayName { %log; %orig; }
- (NSString *)m_nsDisplayName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_sequenceId:(unsigned int )m_sequenceId { %log; %orig; }
- (unsigned int )m_sequenceId { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_isEnterpriseMsg:(_Bool )m_isEnterpriseMsg { %log; %orig; }
- (_Bool )m_isEnterpriseMsg { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_isTempSessionMsg:(_Bool )m_isTempSessionMsg { %log; %orig; }
- (_Bool )m_isTempSessionMsg { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setWatchMsgSourceType:(unsigned long long )watchMsgSourceType { %log; %orig; }
- (unsigned long long )watchMsgSourceType { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setM_nsAtUserList:(NSString *)m_nsAtUserList { %log; %orig; }
- (NSString *)m_nsAtUserList { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_uiBizChatVer:(unsigned int )m_uiBizChatVer { %log; %orig; }
- (unsigned int )m_uiBizChatVer { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_nsBizChatId:(NSString *)m_nsBizChatId { %log; %orig; }
- (NSString *)m_nsBizChatId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsBizClientMsgID:(NSString *)m_nsBizClientMsgID { %log; %orig; }
- (NSString *)m_nsBizClientMsgID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsKFWorkerOpenID:(NSString *)m_nsKFWorkerOpenID { %log; %orig; }
- (NSString *)m_nsKFWorkerOpenID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_uiDownloadStatus:(unsigned int )m_uiDownloadStatus { %log; %orig; }
- (unsigned int )m_uiDownloadStatus { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiPercent:(unsigned int )m_uiPercent { %log; %orig; }
- (unsigned int )m_uiPercent { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_nsPattern:(NSString *)m_nsPattern { %log; %orig; }
- (NSString *)m_nsPattern { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_uiEmojiStatFlag:(unsigned int )m_uiEmojiStatFlag { %log; %orig; }
- (unsigned int )m_uiEmojiStatFlag { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiSendTime:(unsigned int )m_uiSendTime { %log; %orig; }
- (unsigned int )m_uiSendTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_bNew:(_Bool )m_bNew { %log; %orig; }
- (_Bool )m_bNew { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bIsSplit:(_Bool )m_bIsSplit { %log; %orig; }
- (_Bool )m_bIsSplit { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_dtThumbnail:(NSData *)m_dtThumbnail { %log; %orig; }
- (NSData *)m_dtThumbnail { %log; NSData * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_bCdnForward:(_Bool )m_bCdnForward { %log; %orig; }
- (_Bool )m_bCdnForward { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bForward:(_Bool )m_bForward { %log; %orig; }
- (_Bool )m_bForward { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_nsRealChatUsr:(NSString *)m_nsRealChatUsr { %log; %orig; }
- (NSString *)m_nsRealChatUsr { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_extendInfoWithFromUsr:(id <IMsgExtendOperation> )m_extendInfoWithFromUsr { %log; %orig; }
//- (id <IMsgExtendOperation> )m_extendInfoWithFromUsr { %log; id <IMsgExtendOperation>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
//- (void)setM_extendInfoWithMsgType:(id <IMsgExtendOperation> )m_extendInfoWithMsgType { %log; %orig; }
//- (id <IMsgExtendOperation> )m_extendInfoWithMsgType { %log; id <IMsgExtendOperation>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
//- (void)setM_extendInfoWithMsgTypeForBiz:(id <IMsgExtendOperation> )m_extendInfoWithMsgTypeForBiz { %log; %orig; }
//- (id <IMsgExtendOperation> )m_extendInfoWithMsgTypeForBiz { %log; id <IMsgExtendOperation>  r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
- (void)setM_nsMsgSource:(NSString *)m_nsMsgSource { %log; %orig; }
- (NSString *)m_nsMsgSource { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsPushBody:(NSString *)m_nsPushBody { %log; %orig; }
- (NSString *)m_nsPushBody { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsPushPrefix:(NSString *)m_nsPushPrefix { %log; %orig; }
- (NSString *)m_nsPushPrefix { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsPushTitle:(NSString *)m_nsPushTitle { %log; %orig; }
- (NSString *)m_nsPushTitle { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsPushContent:(NSString *)m_nsPushContent { %log; %orig; }
- (NSString *)m_nsPushContent { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_uiCreateTime:(unsigned int )m_uiCreateTime { %log; %orig; }
- (unsigned int )m_uiCreateTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiMsgFlag:(unsigned int )m_uiMsgFlag { %log; %orig; }
- (unsigned int )m_uiMsgFlag { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiImgStatus:(unsigned int )m_uiImgStatus { %log; %orig; }
- (unsigned int )m_uiImgStatus { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiStatus:(unsigned int )m_uiStatus { %log; %orig; }
- (unsigned int )m_uiStatus { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_nsContent:(NSString *)m_nsContent { %log; %orig; }
- (NSString *)m_nsContent { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_uiMessageType:(unsigned int )m_uiMessageType { %log; %orig; }
- (unsigned int )m_uiMessageType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_nsToUsr:(NSString *)m_nsToUsr { %log; %orig; }
- (NSString *)m_nsToUsr { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsFromUsr:(NSString *)m_nsFromUsr { %log; %orig; }
- (NSString *)m_nsFromUsr { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_n64MesSvrID:(long long )m_n64MesSvrID { %log; %orig; }
- (long long )m_n64MesSvrID { %log; long long  r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)setM_uiMesLocalID:(unsigned int )m_uiMesLocalID { %log; %orig; }
- (unsigned int )m_uiMesLocalID { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
//- (void).cxx_destruct { %log; %orig; }
- (_Bool)isSentOK { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsNewInvitationApprove { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsNewInvitation { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsRoomAnnouncement { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsAtMe { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isShowAppMessageBlockButton { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isShowAppBottomButton { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)keyDescription { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)description { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)parseWCPayInfoItemIfNeed { %log; %orig; }
- (id)getWCPayMsgExtBizId { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned int)getWCPayMsgInvalidTime { %log; unsigned int r = %orig; HBLogDebug(@" = %u", r); return r; }
- (_Bool)IsNeedAddWCPayMsgBizExt { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)getWCPayMsgExtBizIdWithType:(unsigned int)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (_Bool)isNewWCPayBizExtMsg:(int *)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isAAMessageForNewWCPayBizExt { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isHongBaoMessageForNewWCPayBizExt { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isTransferMessageForNewWCPayBizExt { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsNeedChatExt { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)genMiddleImg:(id)arg1 originImgData:(id)arg2 isSaveOK:(_Bool)arg3 delegate:(id)arg4 { %log; %orig; }
//- (_Bool)genImageFromMMAssetAndNotify:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)GetDisplayContent { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetMsgClientMsgID { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (_Bool)IsSameMsgWithFullCheck:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsSameMsg:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsSendBySendMsg { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsAppMessage { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsPureVideoMsg { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsVideoMsg { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsSimpleVideoMsg { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsImgMsg { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsTextMsg { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsChatRoomMessage { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsMassSendMessage { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)IsBottleMessage { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)GetChatName { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)AddTagToMsgSource:(id)arg1 value:(id)arg2 { %log; %orig; }
- (void)UpdateMsgSource { %log; %orig; }
- (void)ChangeForDisplay { %log; %orig; }
- (void)ChangeForSimpleMsgInfo { %log; %orig; }
- (void)ChangeForBackup { %log; %orig; }
- (void)fillMsgSourceFromContact:(id)arg1 isFromTempSession:(_Bool)arg2 { %log; %orig; }
- (void)ChangeForPushContent { %log; %orig; }
- (void)ChangeForMsgSource { %log; %orig; }
- (void)ChangeForChatRoom { %log; %orig; }
- (id)forwardingTargetForSelector:(SEL)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)forwardInvocation:(id)arg1 { %log; %orig; }
- (id)methodSignatureForSelector:(SEL)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)copyWithZone:(struct _NSZone *)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)copyToMsg:(id)arg1 { %log; %orig; }
- (id)initWithMsgType:(long long)arg1 nsFromUsr:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)initWithMsgType:(long long)arg1 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)wishingString { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (_Bool)bIsAppUrlTypeWithCanvas { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)nativeUrl { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (int)yoType { %log; int r = %orig; HBLogDebug(@" = %d", r); return r; }
- (unsigned long long)yoCount { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (id)getNodeBtnList { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (long long)compareQQAscending:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (long long)compareSXAscending:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (long long)compareMessageAscending:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (long long)compareMessageLocalIDDescending:(id)arg1 { %log; long long r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (_Bool)canBeginPreload { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isPreloadVideoTask { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (unsigned long long)getPickerSceneFromOptionObj { %log; unsigned long long r = %orig; HBLogDebug(@" = %llu", r); return r; }
//- (CDUnknownBlockType)getVideoExportCallbackBlockWithAsset:(id)arg1 URL:(id)arg2 noCompress:(_Bool)arg3 completion:(CDUnknownBlockType)arg4 { %log; CDUnknownBlockType r = %orig; HBLogDebug(@" = 0x%x", (unsigned int)r); return r; }
//- (void)asyncCompressVideoWithCompletion:(CDUnknownBlockType)arg1 { %log; %orig; }
- (_Bool)canPlayVideo:(id)arg1 { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool)isAd { %log; _Bool r = %orig; HBLogDebug(@" = %d", r); return r; }
- (id)GetCdnDownloadThumbPathOfVideo { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (id)GetCdnDownloadPathOfVideo { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
- (NSString *)debugDescription { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (unsigned long long )hash { %log; unsigned long long  r = %orig; HBLogDebug(@" = %llu", r); return r; }
- (void)setM_AttachedContent:(NSString *)m_AttachedContent { %log; %orig; }
- (NSString *)m_AttachedContent { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_aesKey:(NSString *)m_aesKey { %log; %orig; }
- (NSString *)m_aesKey { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_arrCustomWrap:(NSArray *)m_arrCustomWrap { %log; %orig; }
- (NSArray *)m_arrCustomWrap { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_arrInviteeMembers:(NSMutableArray *)m_arrInviteeMembers { %log; %orig; }
- (NSMutableArray *)m_arrInviteeMembers { %log; NSMutableArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_arrMembers:(NSMutableArray *)m_arrMembers { %log; %orig; }
- (NSMutableArray *)m_arrMembers { %log; NSMutableArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_arrReaderWaps:(NSArray *)m_arrReaderWaps { %log; %orig; }
- (NSArray *)m_arrReaderWaps { %log; NSArray * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_asset:(MMAsset *)m_asset { %log; %orig; }
//- (MMAsset *)m_asset { %log; MMAsset * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_bAppAttachExistInSvr:(_Bool )m_bAppAttachExistInSvr { %log; %orig; }
- (_Bool )m_bAppAttachExistInSvr { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bCanFold:(_Bool )m_bCanFold { %log; %orig; }
- (_Bool )m_bCanFold { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bFolded:(_Bool )m_bFolded { %log; %orig; }
- (_Bool )m_bFolded { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bHasApprove:(_Bool )m_bHasApprove { %log; %orig; }
- (_Bool )m_bHasApprove { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bIsForceUpdate:(_Bool )m_bIsForceUpdate { %log; %orig; }
- (_Bool )m_bIsForceUpdate { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bNeedReloadSubView:(_Bool )m_bNeedReloadSubView { %log; %orig; }
- (_Bool )m_bNeedReloadSubView { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bNewApprove:(_Bool )m_bNewApprove { %log; %orig; }
- (_Bool )m_bNewApprove { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bNewInv:(_Bool )m_bNewInv { %log; %orig; }
- (_Bool )m_bNewInv { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_bShowRewardTips:(_Bool )m_bShowRewardTips { %log; %orig; }
- (_Bool )m_bShowRewardTips { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_cdnUrlString:(NSString *)m_cdnUrlString { %log; %orig; }
- (NSString *)m_cdnUrlString { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_dicQuitRoomInfo:(NSMutableDictionary *)m_dicQuitRoomInfo { %log; %orig; }
- (NSMutableDictionary *)m_dicQuitRoomInfo { %log; NSMutableDictionary * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_dicStatParas:(NSMutableDictionary *)m_dicStatParas { %log; %orig; }
- (NSMutableDictionary *)m_dicStatParas { %log; NSMutableDictionary * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_dtImg:(NSData *)m_dtImg { %log; %orig; }
- (NSData *)m_dtImg { %log; NSData * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_dtSenderMidImg:(NSData *)m_dtSenderMidImg { %log; %orig; }
- (NSData *)m_dtSenderMidImg { %log; NSData * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_dtVoice:(NSData *)m_dtVoice { %log; %orig; }
- (NSData *)m_dtVoice { %log; NSData * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_duration:(unsigned int )m_duration { %log; %orig; }
- (unsigned int )m_duration { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_encryptUrlString:(NSString *)m_encryptUrlString { %log; %orig; }
- (NSString *)m_encryptUrlString { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_fLatitude:(double )m_fLatitude { %log; %orig; }
- (double )m_fLatitude { %log; double  r = %orig; HBLogDebug(@" = %f", r); return r; }
- (void)setM_fLongitude:(double )m_fLongitude { %log; %orig; }
- (double )m_fLongitude { %log; double  r = %orig; HBLogDebug(@" = %f", r); return r; }
- (void)setM_fromChatUserName:(NSString *)m_fromChatUserName { %log; %orig; }
- (NSString *)m_fromChatUserName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_fullXmlLength:(unsigned int )m_fullXmlLength { %log; %orig; }
- (unsigned int )m_fullXmlLength { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_i64VoipKey:(long long )m_i64VoipKey { %log; %orig; }
- (long long )m_i64VoipKey { %log; long long  r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)setM_iVoipRoomid:(int )m_iVoipRoomid { %log; %orig; }
- (int )m_iVoipRoomid { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_infoUrl:(NSString *)m_infoUrl { %log; %orig; }
- (NSString *)m_infoUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_inviterName:(NSString *)m_inviterName { %log; %orig; }
- (NSString *)m_inviterName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_isCanUpload:(_Bool )m_isCanUpload { %log; %orig; }
- (_Bool )m_isCanUpload { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (_Bool )m_isContentOriginal { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_isDirectSend:(_Bool )m_isDirectSend { %log; %orig; }
- (_Bool )m_isDirectSend { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_isForNewYear:(_Bool )m_isForNewYear { %log; %orig; }
- (_Bool )m_isForNewYear { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_isReaderForbidForward:(_Bool )m_isReaderForbidForward { %log; %orig; }
- (_Bool )m_isReaderForbidForward { %log; _Bool  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_latitude:(double )m_latitude { %log; %orig; }
- (double )m_latitude { %log; double  r = %orig; HBLogDebug(@" = %f", r); return r; }
- (void)setM_locationLabel:(NSString *)m_locationLabel { %log; %orig; }
- (NSString *)m_locationLabel { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_longitude:(double )m_longitude { %log; %orig; }
- (double )m_longitude { %log; double  r = %orig; HBLogDebug(@" = %f", r); return r; }
- (void)setM_mapScale:(double )m_mapScale { %log; %orig; }
- (double )m_mapScale { %log; double  r = %orig; HBLogDebug(@" = %f", r); return r; }
- (void)setM_mapType:(NSString *)m_mapType { %log; %orig; }
- (NSString *)m_mapType { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_msgInnerType:(long long )m_msgInnerType { %log; %orig; }
- (long long )m_msgInnerType { %log; long long  r = %orig; HBLogDebug(@" = %lld", r); return r; }
- (void)setM_nDownloadLimit:(int )m_nDownloadLimit { %log; %orig; }
- (int )m_nDownloadLimit { %log; int  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_newXmlType:(NSString *)m_newXmlType { %log; %orig; }
- (NSString *)m_newXmlType { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsActivityId:(NSString *)m_nsActivityId { %log; %orig; }
- (NSString *)m_nsActivityId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAesKey:(NSString *)m_nsAesKey { %log; %orig; }
- (NSString *)m_nsAesKey { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppAction:(NSString *)m_nsAppAction { %log; %orig; }
- (NSString *)m_nsAppAction { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppAttachID:(NSString *)m_nsAppAttachID { %log; %orig; }
- (NSString *)m_nsAppAttachID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppContent:(NSString *)m_nsAppContent { %log; %orig; }
- (NSString *)m_nsAppContent { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppExtInfo:(NSString *)m_nsAppExtInfo { %log; %orig; }
- (NSString *)m_nsAppExtInfo { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppFileExt:(NSString *)m_nsAppFileExt { %log; %orig; }
- (NSString *)m_nsAppFileExt { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppID:(NSString *)m_nsAppID { %log; %orig; }
- (NSString *)m_nsAppID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppMediaDataUrl:(NSString *)m_nsAppMediaDataUrl { %log; %orig; }
- (NSString *)m_nsAppMediaDataUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppMediaLowBandDataUrl:(NSString *)m_nsAppMediaLowBandDataUrl { %log; %orig; }
- (NSString *)m_nsAppMediaLowBandDataUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppMediaLowUrl:(NSString *)m_nsAppMediaLowUrl { %log; %orig; }
- (NSString *)m_nsAppMediaLowUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppMediaTagName:(NSString *)m_nsAppMediaTagName { %log; %orig; }
- (NSString *)m_nsAppMediaTagName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppMediaUrl:(NSString *)m_nsAppMediaUrl { %log; %orig; }
- (NSString *)m_nsAppMediaUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppMessageAction:(NSString *)m_nsAppMessageAction { %log; %orig; }
- (NSString *)m_nsAppMessageAction { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppMessageExt:(NSString *)m_nsAppMessageExt { %log; %orig; }
- (NSString *)m_nsAppMessageExt { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAppName:(NSString *)m_nsAppName { %log; %orig; }
- (NSString *)m_nsAppName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAssetId:(NSString *)m_nsAssetId { %log; %orig; }
- (NSString *)m_nsAssetId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsAutoDownloadControl:(NSString *)m_nsAutoDownloadControl { %log; %orig; }
- (NSString *)m_nsAutoDownloadControl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsDesc:(NSString *)m_nsDesc { %log; %orig; }
- (NSString *)m_nsDesc { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsDesignerId:(NSString *)m_nsDesignerId { %log; %orig; }
- (NSString *)m_nsDesignerId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsEmoticonBelongToProductID:(NSString *)m_nsEmoticonBelongToProductID { %log; %orig; }
- (NSString *)m_nsEmoticonBelongToProductID { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsEmoticonMD5:(NSString *)m_nsEmoticonMD5 { %log; %orig; }
- (NSString *)m_nsEmoticonMD5 { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsExternMd5:(NSString *)m_nsExternMd5 { %log; %orig; }
- (NSString *)m_nsExternMd5 { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsExternUrl:(NSString *)m_nsExternUrl { %log; %orig; }
- (NSString *)m_nsExternUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsFileParam:(NSString *)m_nsFileParam { %log; %orig; }
- (NSString *)m_nsFileParam { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsImgHDUrl:(NSString *)m_nsImgHDUrl { %log; %orig; }
- (NSString *)m_nsImgHDUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsImgMidUrl:(NSString *)m_nsImgMidUrl { %log; %orig; }
- (NSString *)m_nsImgMidUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsImgSrc:(NSString *)m_nsImgSrc { %log; %orig; }
- (NSString *)m_nsImgSrc { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsInviteReason:(NSString *)m_nsInviteReason { %log; %orig; }
- (NSString *)m_nsInviteReason { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsInviteTickets:(NSString *)m_nsInviteTickets { %log; %orig; }
- (NSString *)m_nsInviteTickets { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsJsAppId:(NSString *)m_nsJsAppId { %log; %orig; }
- (NSString *)m_nsJsAppId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsMsgAttachUrl:(NSString *)m_nsMsgAttachUrl { %log; %orig; }
- (NSString *)m_nsMsgAttachUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsMsgDataUrl:(NSString *)m_nsMsgDataUrl { %log; %orig; }
- (NSString *)m_nsMsgDataUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsMsgMd5:(NSString *)m_nsMsgMd5 { %log; %orig; }
- (NSString *)m_nsMsgMd5 { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsMsgThumbAesKey:(NSString *)m_nsMsgThumbAesKey { %log; %orig; }
- (NSString *)m_nsMsgThumbAesKey { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsMsgThumbMd5:(NSString *)m_nsMsgThumbMd5 { %log; %orig; }
- (NSString *)m_nsMsgThumbMd5 { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsMsgThumbUrl:(NSString *)m_nsMsgThumbUrl { %log; %orig; }
- (NSString *)m_nsMsgThumbUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsNewMd5:(NSString *)m_nsNewMd5 { %log; %orig; }
- (NSString *)m_nsNewMd5 { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsNoPreDownloadRange:(NSString *)m_nsNoPreDownloadRange { %log; %orig; }
- (NSString *)m_nsNoPreDownloadRange { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsRemindAttachId:(NSString *)m_nsRemindAttachId { %log; %orig; }
- (NSString *)m_nsRemindAttachId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsShareOpenUrl:(NSString *)m_nsShareOpenUrl { %log; %orig; }
- (NSString *)m_nsShareOpenUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsShareOriginUrl:(NSString *)m_nsShareOriginUrl { %log; %orig; }
- (NSString *)m_nsShareOriginUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsSourceDisplayname:(NSString *)m_nsSourceDisplayname { %log; %orig; }
- (NSString *)m_nsSourceDisplayname { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsSourceUsername:(NSString *)m_nsSourceUsername { %log; %orig; }
- (NSString *)m_nsSourceUsername { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStatExtStr:(NSString *)m_nsStatExtStr { %log; %orig; }
- (NSString *)m_nsStatExtStr { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStreamVideoAdUxInfo:(NSString *)m_nsStreamVideoAdUxInfo { %log; %orig; }
- (NSString *)m_nsStreamVideoAdUxInfo { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStreamVideoPublishId:(NSString *)m_nsStreamVideoPublishId { %log; %orig; }
- (NSString *)m_nsStreamVideoPublishId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStreamVideoThumbUrl:(NSString *)m_nsStreamVideoThumbUrl { %log; %orig; }
- (NSString *)m_nsStreamVideoThumbUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStreamVideoTitle:(NSString *)m_nsStreamVideoTitle { %log; %orig; }
- (NSString *)m_nsStreamVideoTitle { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStreamVideoUrl:(NSString *)m_nsStreamVideoUrl { %log; %orig; }
- (NSString *)m_nsStreamVideoUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStreamVideoWebUrl:(NSString *)m_nsStreamVideoWebUrl { %log; %orig; }
- (NSString *)m_nsStreamVideoWebUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsStreamVideoWording:(NSString *)m_nsStreamVideoWording { %log; %orig; }
- (NSString *)m_nsStreamVideoWording { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsTemplateId:(NSString *)m_nsTemplateId { %log; %orig; }
- (NSString *)m_nsTemplateId { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsThumbImgUrl:(NSString *)m_nsThumbImgUrl { %log; %orig; }
- (NSString *)m_nsThumbImgUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsThumbUrl:(NSString *)m_nsThumbUrl { %log; %orig; }
- (NSString *)m_nsThumbUrl { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_nsTitle:(NSString *)m_nsTitle { %log; %orig; }
- (NSString *)m_nsTitle { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oAppInnerJumpItem:(AppInnerJumpItem *)m_oAppInnerJumpItem { %log; %orig; }
//- (AppInnerJumpItem *)m_oAppInnerJumpItem { %log; AppInnerJumpItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oAppProductItem:(AppProductItem *)m_oAppProductItem { %log; %orig; }
//- (AppProductItem *)m_oAppProductItem { %log; AppProductItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oAppTVItem:(AppTVItem *)m_oAppTVItem { %log; %orig; }
//- (AppTVItem *)m_oAppTVItem { %log; AppTVItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oCanvasPageItem:(WCCanvasPageItem *)m_oCanvasPageItem { %log; %orig; }
//- (WCCanvasPageItem *)m_oCanvasPageItem { %log; WCCanvasPageItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oCardTicketItem:(CardTicketItem *)m_oCardTicketItem { %log; %orig; }
//- (CardTicketItem *)m_oCardTicketItem { %log; CardTicketItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oEmoticonSharedItem:(EmoticonSharedItem *)m_oEmoticonSharedItem { %log; %orig; }
//- (EmoticonSharedItem *)m_oEmoticonSharedItem { %log; EmoticonSharedItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oEmotionDesignerSharedItem:(EmotionDesignerSharedItem *)m_oEmotionDesignerSharedItem { %log; %orig; }
//- (EmotionDesignerSharedItem *)m_oEmotionDesignerSharedItem { %log; EmotionDesignerSharedItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oEmotionPageSharedItem:(EmotionPageSharedItem *)m_oEmotionPageSharedItem { %log; %orig; }
//- (EmotionPageSharedItem *)m_oEmotionPageSharedItem { %log; EmotionPageSharedItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oGiftCardItem:(GiftCardItem *)m_oGiftCardItem { %log; %orig; }
//- (GiftCardItem *)m_oGiftCardItem { %log; GiftCardItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oHardWareItem:(HardWareItem *)m_oHardWareItem { %log; %orig; }
//- (HardWareItem *)m_oHardWareItem { %log; HardWareItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oImageInfo:(ImageInfo *)m_oImageInfo { %log; %orig; }
//- (ImageInfo *)m_oImageInfo { %log; ImageInfo * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oMallProductItem:(MallProductItem *)m_oMallProductItem { %log; %orig; }
//- (MallProductItem *)m_oMallProductItem { %log; MallProductItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oMsgExpItem:(MessageExpItem *)m_oMsgExpItem { %log; %orig; }
//- (MessageExpItem *)m_oMsgExpItem { %log; MessageExpItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oPushMailWrap:(PushMailWrap *)m_oPushMailWrap { %log; %orig; }
//- (PushMailWrap *)m_oPushMailWrap { %log; PushMailWrap * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oRecordItem:(FavoritesItem *)m_oRecordItem { %log; %orig; }
//- (FavoritesItem *)m_oRecordItem { %log; FavoritesItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oTemplateMsg3rdAppShowItem:(MMTemplateMsg3rdAppShowItem *)m_oTemplateMsg3rdAppShowItem { %log; %orig; }
//- (MMTemplateMsg3rdAppShowItem *)m_oTemplateMsg3rdAppShowItem { %log; MMTemplateMsg3rdAppShowItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oVideoUploadStatInfo:(VideoUploadStatInfo *)m_oVideoUploadStatInfo { %log; %orig; }
//- (VideoUploadStatInfo *)m_oVideoUploadStatInfo { %log; VideoUploadStatInfo * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oWAAppItem:(WAAppMsgItem *)m_oWAAppItem { %log; %orig; }
//- (WAAppMsgItem *)m_oWAAppItem { %log; WAAppMsgItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oWCPayInfoItem:(WCPayInfoItem *)m_oWCPayInfoItem { %log; %orig; }
//- (WCPayInfoItem *)m_oWCPayInfoItem { %log; WCPayInfoItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oWebcachePushInfo:(MMWCPushInfo *)m_oWebcachePushInfo { %log; %orig; }
//- (MMWCPushInfo *)m_oWebcachePushInfo { %log; MMWCPushInfo * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_oiWatchMsgItem:(iWatchAppMsgItem *)m_oiWatchMsgItem { %log; %orig; }
//- (iWatchAppMsgItem *)m_oiWatchMsgItem { %log; iWatchAppMsgItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_openSDKAppBrandItem:(OpenSDKAppBrandItem *)m_openSDKAppBrandItem { %log; %orig; }
//- (OpenSDKAppBrandItem *)m_openSDKAppBrandItem { %log; OpenSDKAppBrandItem * r = %orig; HBLogDebug(@" = %@", r); return r; }
//- (void)setM_payExtensionInfo:(WCPayExtensionInfo *)m_payExtensionInfo { %log; %orig; }
//- (WCPayExtensionInfo *)m_payExtensionInfo { %log; WCPayExtensionInfo * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_poiName:(NSString *)m_poiName { %log; %orig; }
- (NSString *)m_poiName { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_qrCode:(NSString *)m_qrCode { %log; %orig; }
- (NSString *)m_qrCode { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_realInnerType:(unsigned int )m_realInnerType { %log; %orig; }
- (unsigned int )m_realInnerType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_refMessageWrap:(CMessageWrap *)m_refMessageWrap { %log; %orig; }
- (CMessageWrap *)m_refMessageWrap { %log; CMessageWrap * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_sessionShowContent:(NSString *)m_sessionShowContent { %log; %orig; }
- (NSString *)m_sessionShowContent { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_showContent:(NSString *)m_showContent { %log; %orig; }
- (NSString *)m_showContent { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_uiApiSDKVersion:(unsigned int )m_uiApiSDKVersion { %log; %orig; }
- (unsigned int )m_uiApiSDKVersion { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiAppContentAttributeBitSetFlag:(unsigned int )m_uiAppContentAttributeBitSetFlag { %log; %orig; }
- (unsigned int )m_uiAppContentAttributeBitSetFlag { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiAppDataSize:(unsigned int )m_uiAppDataSize { %log; %orig; }
- (unsigned int )m_uiAppDataSize { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiAppExtShowType:(unsigned int )m_uiAppExtShowType { %log; %orig; }
- (unsigned int )m_uiAppExtShowType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiAppMsgInnerType:(unsigned int )m_uiAppMsgInnerType { %log; %orig; }
- (unsigned int )m_uiAppMsgInnerType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiAppVersion:(unsigned int )m_uiAppVersion { %log; %orig; }
- (unsigned int )m_uiAppVersion { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiCameraType:(unsigned int )m_uiCameraType { %log; %orig; }
- (unsigned int )m_uiCameraType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiDownloadPercent:(unsigned int )m_uiDownloadPercent { %log; %orig; }
- (unsigned int )m_uiDownloadPercent { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiEmoticonHeight:(unsigned int )m_uiEmoticonHeight { %log; %orig; }
- (unsigned int )m_uiEmoticonHeight { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiEmoticonType:(unsigned int )m_uiEmoticonType { %log; %orig; }
- (unsigned int )m_uiEmoticonType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiEmoticonWidth:(unsigned int )m_uiEmoticonWidth { %log; %orig; }
- (unsigned int )m_uiEmoticonWidth { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiEncryVer:(unsigned int )m_uiEncryVer { %log; %orig; }
- (unsigned int )m_uiEncryVer { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiGameContent:(unsigned int )m_uiGameContent { %log; %orig; }
- (unsigned int )m_uiGameContent { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiGameType:(unsigned int )m_uiGameType { %log; %orig; }
- (unsigned int )m_uiGameType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiHDImgSize:(unsigned int )m_uiHDImgSize { %log; %orig; }
- (unsigned int )m_uiHDImgSize { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiMsgThumbHeight:(unsigned int )m_uiMsgThumbHeight { %log; %orig; }
- (unsigned int )m_uiMsgThumbHeight { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiMsgThumbSize:(unsigned int )m_uiMsgThumbSize { %log; %orig; }
- (unsigned int )m_uiMsgThumbSize { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiMsgThumbWidth:(unsigned int )m_uiMsgThumbWidth { %log; %orig; }
- (unsigned int )m_uiMsgThumbWidth { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiNormalImgSize:(unsigned int )m_uiNormalImgSize { %log; %orig; }
- (unsigned int )m_uiNormalImgSize { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiOriginFormat:(unsigned int )m_uiOriginFormat { %log; %orig; }
- (unsigned int )m_uiOriginFormat { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiOriginMsgSvrId:(unsigned int )m_uiOriginMsgSvrId { %log; %orig; }
- (unsigned int )m_uiOriginMsgSvrId { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiPreDownloadNetType:(unsigned int )m_uiPreDownloadNetType { %log; %orig; }
- (unsigned int )m_uiPreDownloadNetType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiPreDownloadPercent:(unsigned int )m_uiPreDownloadPercent { %log; %orig; }
- (unsigned int )m_uiPreDownloadPercent { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiRemindAttachTotalLen:(unsigned int )m_uiRemindAttachTotalLen { %log; %orig; }
- (unsigned int )m_uiRemindAttachTotalLen { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiRemindFormat:(unsigned int )m_uiRemindFormat { %log; %orig; }
- (unsigned int )m_uiRemindFormat { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiRemindId:(unsigned int )m_uiRemindId { %log; %orig; }
- (unsigned int )m_uiRemindId { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiRemindTime:(unsigned int )m_uiRemindTime { %log; %orig; }
- (unsigned int )m_uiRemindTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiScene:(unsigned int )m_uiScene { %log; %orig; }
- (unsigned int )m_uiScene { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiShowType:(unsigned int )m_uiShowType { %log; %orig; }
- (unsigned int )m_uiShowType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiSoundType:(unsigned int )m_uiSoundType { %log; %orig; }
- (unsigned int )m_uiSoundType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiStreamVideoTime:(unsigned int )m_uiStreamVideoTime { %log; %orig; }
- (unsigned int )m_uiStreamVideoTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiTemplateType:(unsigned int )m_uiTemplateType { %log; %orig; }
- (unsigned int )m_uiTemplateType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiUploadStatus:(unsigned int )m_uiUploadStatus { %log; %orig; }
- (unsigned int )m_uiUploadStatus { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVideoLen:(unsigned int )m_uiVideoLen { %log; %orig; }
- (unsigned int )m_uiVideoLen { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVideoOffset:(unsigned int )m_uiVideoOffset { %log; %orig; }
- (unsigned int )m_uiVideoOffset { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVideoSource:(unsigned int )m_uiVideoSource { %log; %orig; }
- (unsigned int )m_uiVideoSource { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVideoTime:(unsigned int )m_uiVideoTime { %log; %orig; }
- (unsigned int )m_uiVideoTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoiceCancelFlag:(unsigned int )m_uiVoiceCancelFlag { %log; %orig; }
- (unsigned int )m_uiVoiceCancelFlag { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoiceEndFlag:(unsigned int )m_uiVoiceEndFlag { %log; %orig; }
- (unsigned int )m_uiVoiceEndFlag { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoiceFormat:(unsigned int )m_uiVoiceFormat { %log; %orig; }
- (unsigned int )m_uiVoiceFormat { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoiceForwardFlag:(unsigned int )m_uiVoiceForwardFlag { %log; %orig; }
- (unsigned int )m_uiVoiceForwardFlag { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoiceTime:(unsigned int )m_uiVoiceTime { %log; %orig; }
- (unsigned int )m_uiVoiceTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoipInviteType:(unsigned int )m_uiVoipInviteType { %log; %orig; }
- (unsigned int )m_uiVoipInviteType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoipRecvTime:(unsigned int )m_uiVoipRecvTime { %log; %orig; }
- (unsigned int )m_uiVoipRecvTime { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiVoipStatus:(unsigned int )m_uiVoipStatus { %log; %orig; }
- (unsigned int )m_uiVoipStatus { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiWeAppState:(unsigned int )m_uiWeAppState { %log; %orig; }
- (unsigned int )m_uiWeAppState { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_uiWeAppVersion:(unsigned int )m_uiWeAppVersion { %log; %orig; }
- (unsigned int )m_uiWeAppVersion { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (void)setM_url:(NSString *)m_url { %log; %orig; }
- (NSString *)m_url { %log; NSString * r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_wordingType:(unsigned int )m_wordingType { %log; %orig; }
- (unsigned int )m_wordingType { %log; unsigned int  r = %orig; HBLogDebug(@" = %u", r); return r; }
- (Class )superclass { %log; Class  r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
