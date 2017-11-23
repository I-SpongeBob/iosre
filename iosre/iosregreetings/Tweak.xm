%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application
{
	%orig;
	NSLog(@"zzzzzzzz");
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Come to http://bbs.iosre.com for more fun!" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alert show];
	
}
%end
