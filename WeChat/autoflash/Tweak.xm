-(void)willAppear{
	%log;
	%orig;
	AutoFlash *autoFlash=[[Autoflash alloc]init];
	[autoFlash flashForTimes:2];
}