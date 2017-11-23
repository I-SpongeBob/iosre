#import "SetVpn.h"
%hook ViewController
- (void)viewDidLoad {
	%log;
	%orig;
     	NSLog(@"zzzzzzzzzzzzzzzzzzzzzzz");
	SetVpn *setVpn=[[SetVpn alloc]init];
	[setVpn deleteVPN];
}

%end