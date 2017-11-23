#import "GroupManage.h"

%hook NewMainFrameViewController
- (void)viewDidAppear:(_Bool)arg1 {
	%log;
	%orig;
	GroupManage *groupManage = [[GroupManage alloc] init];
	[groupManage start];
}
%end;