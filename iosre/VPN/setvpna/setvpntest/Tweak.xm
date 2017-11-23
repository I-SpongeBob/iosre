#import "SetVpn.h"
%hook SBIconController
- (void)setIsEditing:(_Bool)arg1
{
	%orig;
	%log;
	NSLog(@"zzzzzzzzzzzzzzzzzzzzzzz");
	
	SetVpn *setVpn=[[SetVpn alloc]init];
	[setVpn start];
	[setVpn deleteVPN];
	
}
%end

//%hook PSListController
//- (void)viewDidAppear:(BOOL)animated 