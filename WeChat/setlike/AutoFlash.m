#import"AutoFlash.h"
#import"CCAutoLikeHeader.h"

@interface AutoFlash()
@property(assign, nonatomic) int a;
@property(assign, nonatomic) int b;
@property(assign, nonatomic) WCTimeLineViewController *wcTimeLineViewController;
@property(assign, nonatomic) int i;
@end


@implementation AutoFlash



-(void)flash:(float)yOffset{
    
    WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
    
    NSLog(@"---------------------%@",wcTimeLineViewController);
    
   
    float xOffset=0.0;
    if([wcTimeLineViewController isKindOfClass:[NSClassFromString(@"WCTimeLineViewController") class]])
    {
        UITableView *tableView=[[[wcTimeLineViewController view] subviews]objectAtIndex:1];
        if (tableView.contentSize.height > tableView.bounds.size.height) {
            
            xOffset=yOffset;
            yOffset = tableView.contentSize.height - tableView.bounds.size.height-xOffset;
        }
       
        [self scroll:1 y:yOffset x:xOffset];
        

        
        self.b=self.a;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(21* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [wcTimeLineViewController onLoadMore];
            self.a=[[[[wcTimeLineViewController view] subviews]objectAtIndex:1]numberOfSections];
            
                        
            
           
            NSLog(@"%f",tableView.contentSize.height);
            
            NSLog(@"b---------------------%d",self.b);
            NSLog(@"a---------------------%d",self.a);
                if(self.b<self.a)
                    [self flash:yOffset];
            
            
        });
    }
    
    
    
    
}
- (void)scroll:(int )i y:(float)yOffset x:(float)xOffset{
    WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
   
    if([wcTimeLineViewController isKindOfClass:[NSClassFromString(@"WCTimeLineViewController") class]]){
         UITableView *tableView=[[[wcTimeLineViewController view] subviews]objectAtIndex:1];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [tableView setContentOffset:CGPointMake(0, xOffset+i*yOffset/20) animated:YES];
            int __block j=i;
            j++;
            if(j<=20)
            {
                [self scroll:j y:yOffset x:xOffset];
            }
        
        });

    }
    }

- (WCTimeLineViewController *)currentVC{
    UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
    MMTabBarController *mmTabBarConteoller=(MMTabBarController*)rootViewController;
    MMUINavigationController *mmUINavigatinController=[mmTabBarConteoller getViewControllerAtIndex:2];
    WCTimeLineViewController *wcTimeLineViewController=[mmUINavigatinController valueForKey:@"visibleViewController"];
    return wcTimeLineViewController;
    
}


@end
