#import"GroupSendAllHelp.h"
#import"GroupSend.h"

%hook CMessageMgr

- (void)AddMsg:(id)arg1 MsgWrap:(CMessageWrap *)wrap{

	GroupSend *groupSend=[[GroupSend alloc]init];
	[groupSend start:arg1 MsgWrap:wrap];
	%orig;
}
%end