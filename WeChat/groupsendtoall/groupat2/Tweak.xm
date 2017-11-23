#import"GroupSendAllHelp.h"
#import"GroupSend.h"

%hook BaseMsgContentViewController

- (void)viewDidAppear:(_Bool)arg1{
	%log;
	GroupSend *groupSend=[[GroupSend alloc]init];
	[groupSend start];
	%orig;
}
%end