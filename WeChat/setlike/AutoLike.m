#import"AutoLike.h"
#import"CCAutoLikeHeader.h"

@interface AutoLike ()
@property (nonatomic, strong) NSMutableArray *ccDataItemsArray;
@property (nonatomic, assign) int ccDataItemsOffect;
@property (nonatomic,assign) BOOL ccAutoLiking;
@property (nonatomic,strong) NSString *ccFirstTidString;
@end


@implementation AutoLike
/* strong weak assign copy  nonatomic natomic */
/* mrc arc */
//static NSMutableArray* ccDataItemsArray;
//static int ccDataItemsOffect = 0;
//static BOOL ccAutoLiking = NO;
//static NSString *ccFirstTidString;


- (NSMutableArray *)ccDataItemsArray{
    if (!_ccDataItemsArray) {
        _ccDataItemsArray = [NSMutableArray array];
    }
    return _ccDataItemsArray;
}

-(void)start{
    self.ccDataItemsOffect=0;
    self.ccAutoLiking=NO;
    WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
    MMTableView *m_tableView=[wcTimeLineViewController valueForKey:@"m_tableView"];
    int number=[wcTimeLineViewController numberOfSectionsInTableView:m_tableView];
    [self ccUpdateDataItemsWithNumber:number];
    
}
//自动点赞函数
-(void)ccStartAutoLike{
    NSLog(@"ccStartAutoLike has been call~ %@",[NSThread currentThread]);
    //执行点赞操作
    MMServiceCenter *msCenter = [[NSClassFromString(@"MMServiceCenter") class] defaultCenter];
    WCFacade *wcFacade = [msCenter getService: [NSClassFromString(@"WCFacade")  class]];
    WCCommentUploadMgr *m_commentUploadMgr = [wcFacade valueForKey:@"m_commentUploadMgr"];
    
    for(WCDataItem *dataItem in _ccDataItemsArray){
        if([dataItem advertiseInfo]){
            // 不给广告点赞
            continue;
        }
        // [wcFacade likeObject:dataItem ofUser:dataItem.username source:0];
        //[wcFacade unLikeObject:dataItem ofUser:dataItem.username];
        
        //比较深入的点赞操作
        id itemID = [dataItem itemID];
        NSString *username = [dataItem username];
        WCCommentItem *cmItem = [[[NSClassFromString(@"WCCommentItem") class] alloc] init];
        [cmItem setItemID:itemID];
        [cmItem setToUserName:username];
        [cmItem setType:1];
        [cmItem setSource:0];
        unsigned time = (unsigned)[[NSDate date] timeIntervalSince1970];
        [cmItem setCreateTime:time];
        [cmItem setInQueueTime:time];
        
        
        NSString *curNsrName = [[NSClassFromString(@"SettingUtil") class] getCurUsrName];
        FIFOFileQueue *m_queue = [m_commentUploadMgr valueForKey:@"m_queue"];
        unsigned long qcount = [[m_queue getAll] count];
        NSString *clientID = [NSString stringWithFormat:@"wcc:%@-%u-%lu",curNsrName,time,qcount];
        [cmItem setClientID:clientID];
        [m_queue push:cmItem];
        [m_commentUploadMgr addCommentToWCObjectCache:cmItem];
        //执行下面命令后开始点赞
        
        NSLog(@"do like for %@~~",dataItem.username);
    }
    [m_commentUploadMgr tryStartNextTask];
    _ccDataItemsArray = nil;
    _ccAutoLiking = NO;
}

- (WCTimeLineViewController *)currentVC{
    UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
    MMTabBarController *mmTabBarConteoller=(MMTabBarController*)rootViewController;
    MMUINavigationController *mmUINavigatinController=[mmTabBarConteoller getViewControllerAtIndex:2];
    WCTimeLineViewController *wcTimeLineViewController=[mmUINavigatinController valueForKey:@"visibleViewController"];
    return wcTimeLineViewController;

}
//获取tableview的section number
-(void)ccUpdateDataItemsWithNumber:(int)number{
    WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
    
    //根据提供的section数量获取dataitems
    MMServiceCenter *msCenter = [[NSClassFromString(@"MMServiceCenter") class] defaultCenter];
    WCFacade *wcFacade = [msCenter getService: [NSClassFromString(@"WCFacade") class]];
    
    //WCFacade *wcFacade = [(MMServiceCenter *)[MMServiceCenter defaultCenter] getService: [WCFacade class]];
    //取得需要的DataItem对象
    WCDataItem * dataItem;
    BOOL needLike = false;
    
    WCDataItem *firstDataItem = [wcFacade getTimelineDataItemOfIndex:[wcTimeLineViewController calcDataItemIndex:0]];
    if(_ccFirstTidString == nil){
        _ccFirstTidString = firstDataItem.tid;
    }else if( ![_ccFirstTidString isEqualToString:firstDataItem.tid] ){
        //如果首个数据发生变化,则重置offect
        _ccFirstTidString = firstDataItem.tid;
        _ccDataItemsOffect = 0;
        NSLog(@"reset _ccDataItemsOffect~~~");
    }
    
    
    if(_ccDataItemsOffect >= number){
        return;
    }
    
    for (int i = _ccDataItemsOffect; i < number; i++){
        NSInteger itemIndex = [wcTimeLineViewController calcDataItemIndex:i];
        if(itemIndex < 0){
            return;
        }
        dataItem = [wcFacade getTimelineDataItemOfIndex:itemIndex];
        if(!dataItem.likeFlag){
            if (!_ccDataItemsArray){
                _ccDataItemsArray = [[NSMutableArray alloc] init];
            }
            [_ccDataItemsArray addObject:dataItem];
            needLike = true;
            NSLog(@"addObject~~~~~~~~~~~~~~");
        }
    }
    _ccDataItemsOffect = number;
    if(needLike){
        _ccAutoLiking = YES;
        [NSThread detachNewThreadSelector:@selector(ccStartAutoLike) toTarget:self withObject:nil];
        needLike = NO;
    }
}


@end
