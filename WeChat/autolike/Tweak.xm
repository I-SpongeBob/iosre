#import"AutoLike.h"
#import"AutoFlash.h"
%hook WCTimeLineViewController

//-(void)reloadTableView{
//	%log;
//        %orig;
 //   	AutoLike *autoLike=[[AutoLike alloc]init];
//	[autoLike start];
//}

-(void)didAppear{
	%log;
	%orig;
	
//	AutoFlash *autoFlash=[[AutoFlash alloc]init];
//	[autoFlash flash:0.0];
	
	AutoLike *autoLike=[[AutoLike alloc]init];
	[autoLike start];

}


%end