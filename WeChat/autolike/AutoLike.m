#import"AutoLike.h"
#import"AutoFlash.h"
#import"CCAutoLikeHeader.h"

@interface AutoLike ()
@property (nonatomic, strong) NSMutableSet *ccNameSet;
@property(assign, nonatomic) WCTimeLineViewController *wcTimeLineViewController;
@property(assign, nonatomic) int a;
@property(assign,nonatomic) long like_offset;
@property(assign,nonatomic) int like_delay;
@property(assign,nonatomic) bool like_by_user;
@property(assign,nonatomic) int like_count;
@property(assign,nonatomic) unsigned taskstarttime;
@property(assign,nonatomic) unsigned judgetime;

@end


@implementation AutoLike
//自动点赞或评论，构造cmItem
-(void)ccStartAutoLike:(int)i {
    
    //获取WCCommentUploadMgr
    MMServiceCenter *msCenter = [[NSClassFromString(@"MMServiceCenter") class] defaultCenter];
    WCFacade *wcFacade = [msCenter getService: [NSClassFromString(@"WCFacade") class]];
    WCCommentUploadMgr *m_commentUploadMgr = [wcFacade valueForKey:@"m_commentUploadMgr"];
    NSLog(@"ccStartAutoLike has been call~ %@",[NSThread currentThread]);
    
    
    
    
    WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
    if([wcTimeLineViewController isKindOfClass:[NSClassFromString(@"WCTimeLineViewController") class]])
    {
        //构造一个名字集合，用来完成需求
        if (!_ccNameSet)
        {
            _ccNameSet = [[NSMutableSet alloc] init];
        }
        WCDataItem * dataItem;
        dataItem = [wcFacade getTimelineDataItemOfIndex:[wcTimeLineViewController calcDataItemIndex:i]];

      
        
        //一些判断函数
        bool judgeName=[_ccNameSet containsObject:dataItem.username];//判断是否之前点过赞的
        bool likeFlag=dataItem.likeFlag;//判断是否已点赞
        bool judgeT=(self.judgetime<dataItem.createtime);//判断时间是否是需求之内的时间
                NSString *curNsrName = [[NSClassFromString(@"SettingUtil") class] getCurUsrName];
        bool judgeSelf=([curNsrName isEqualToString:dataItem.username]);//判断是不是用户自己的朋友圈
        NSLog(@"judgeSelf---%d",judgeSelf);
        int x = arc4random() % 100;//概率函数
        
        NSLog(@"x------%d",x);
        bool judgeRate= (x<30);
       
        if([dataItem advertiseInfo])
        {
            // 不给广告点赞
        }
        else if(!likeFlag&&judgeT&&(!judgeName||(!self.like_by_user))&&!judgeSelf&&judgeRate)
        {
            self.like_count++;
            //返回点赞总数
            NSLog(@"__________________%d",self.like_count);
            [_ccNameSet addObject:dataItem.username];
            WCCommentItem *cmItem = [[[NSClassFromString(@"WCCommentItem") class] alloc] init];
            [cmItem setItemID:dataItem.tid];
            [cmItem setToUserName:dataItem.username];
            [cmItem setType:2];//1为点赞，2为评论
            [cmItem setSource:0];
            [cmItem setContent:@"啊哈"];//评论的内容，点赞时不写
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
        
            [m_commentUploadMgr tryStartNextTask];
        }
    }
}
//加载时间戳之前的界面，利用递归循环
-(void)loadAll:(unsigned)x{
    WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
    unsigned __block judgetime=x;
    if([wcTimeLineViewController isKindOfClass:[NSClassFromString(@"WCTimeLineViewController") class]])
    {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            int numberOfSections=[[[[wcTimeLineViewController view] subviews]objectAtIndex:1]numberOfSections];
            MMServiceCenter *msCenter = [[NSClassFromString(@"MMServiceCenter") class] defaultCenter];
            WCFacade *wcFacade = [msCenter getService: [NSClassFromString(@"WCFacade") class]];
            WCDataItem * lastDataItem=[wcFacade getTimelineDataItemOfIndex:[wcTimeLineViewController calcDataItemIndex:numberOfSections-1]];
            unsigned lastTime=lastDataItem.createtime;
            NSLog(@"____________%u",judgetime);
            NSLog(@"____________%d",lastTime);
            
            //如果时间戳不符合，接着加载
            if(lastTime>judgetime)
            {
                [wcTimeLineViewController onLoadMore];
                [self loadAll:judgetime];
            }
        });
    }
}

//任务开始函数

-(void)start{
    WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
    NSLog(@"---------------------%@",wcTimeLineViewController);
    UITableView *tableView=[[[wcTimeLineViewController view] subviews]objectAtIndex:1];
    NSLog(@"---------------------%@",tableView);
    self.a=[[[[wcTimeLineViewController view] subviews]objectAtIndex:1]numberOfSections];
    NSLog(@"---------------------%d",self.a);
    //获取任务开始时间
    self.taskstarttime=(unsigned)[[NSDate date] timeIntervalSince1970];
    NSLog(@"---------------------%u",self.taskstarttime);
    //传入任务参数
    self.like_offset=2000000;
    self.judgetime=self.taskstarttime-self.like_offset;
    self.like_count=0;
    self.like_delay=3;
    self.like_by_user=false;
    //先刷到时间戳之后的tableview
    NSLog(@"11111111111111111%u",self.judgetime);
    [self loadAll:self.judgetime];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.a=[[[[wcTimeLineViewController view] subviews]objectAtIndex:1]numberOfSections];
        //开始自动滚动点赞评论
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            WCTimeLineViewController *wcTimeLineViewController=[self currentVC];
            NSLog(@"---------------------%@",wcTimeLineViewController);
            UITableView *tableView=[[[wcTimeLineViewController view] subviews]objectAtIndex:1];
            NSLog(@"---------------------%@",tableView);
            self.a=[[[[wcTimeLineViewController view] subviews]objectAtIndex:1]numberOfSections];
            NSLog(@"---------------------%d",self.a);
            for (int i=0; i<self.a; i++)
            {
                //滑动界面
                [tableView selectRowAtIndexPath:[NSIndexPath indexPathForRow: 0 inSection:i]animated:YES scrollPosition:UITableViewScrollPositionTop];
                //点赞评论
                [self ccStartAutoLike:i];
                //延时函数
                sleep(self.like_delay);
            }
        });
        
    });
    
}
//获取当前VC
- (WCTimeLineViewController *)currentVC{
    UIViewController * rootViewController =[UIApplication sharedApplication].keyWindow.rootViewController;
    MMTabBarController *mmTabBarConteoller=(MMTabBarController*)rootViewController;
    MMUINavigationController *mmUINavigatinController=[mmTabBarConteoller getViewControllerAtIndex:2];
    WCTimeLineViewController *wcTimeLineViewController=[mmUINavigatinController valueForKey:@"visibleViewController"];
    return wcTimeLineViewController;
    
}

@end
