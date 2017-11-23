#import"AutoLike.h"
#import"AutoFlash.h"
%hook WCTimeLineViewController

//-(void)reloadTableView{
//	%log;
//        %orig;
 //   	AutoLike *autoLike=[[AutoLike alloc]init];
//	[autoLike start];
//}

-(void)willAppear{
	%log;
	%orig;
	
//	AutoFlash *autoFlash=[[AutoFlash alloc]init];
//	[autoFlash flash:0.0];
	dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
        for (int i=1; i<=10; i++) {
            UITableView *tableView=[[[self view] subviews]objectAtIndex:1];
            CGFloat yOffset = tableView.contentSize.height - tableView.bounds.size.height;
            [tableView setContentOffset:CGPointMake(0, i*yOffset/10) animated:YES];
        	sleep(3);
	}
        
       
        
    });
	

}


%end