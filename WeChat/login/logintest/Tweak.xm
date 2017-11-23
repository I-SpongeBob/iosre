#import "qq.h"
#import "Task.h"
%hook MicroMessengerAppDelegate
- (_Bool)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2{
	%log;
	%orig; 
	NSLog(@"zzzzzzzzzzzzzzzzzzzzzzz");
        Task *task=[[Task alloc]init];
	[task start];
	return 1;
}
%end

