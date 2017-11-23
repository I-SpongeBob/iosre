//
//  After8ViewController.m
//  SearchBarDemo
//
//  Created by 胡翔 on 2017/1/5.
//  Copyright © 2017年 胡翔. All rights reserved.
//

#import "After8ViewController.h"
#import "MySearchResultViewController.h"
#import "Product.h"

@interface After8ViewController ()<UITableViewDelegate,UITableViewDataSource,UISearchResultsUpdating,UISearchBarDelegate>

@property (nonatomic, strong) UITableView *tableView;

@property(nonatomic,strong)NSArray *allProducts;


/**搜索结果ViewController*/
@property(nonatomic,strong) MySearchResultViewController *mySRTVC;

@property(nonatomic,strong) UISearchController *svc;

@end

static NSString *const kReuseIdentifier = @"CellReuseIdentifier";

@implementation After8ViewController

-(NSArray *)allProducts
{
    if (!_allProducts) {
        _allProducts=[Product demoData];
    }
    return _allProducts;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"🔍城市";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kReuseIdentifier];
    
    //创建两个属性实例
    self.mySRTVC=[[MySearchResultViewController  alloc]init];
    self.mySRTVC.mainSearchController = self;
    self.svc=[[UISearchController alloc]initWithSearchResultsController:self.mySRTVC];
    
    //设置与界面有关的样式
    [self.svc.searchBar sizeToFit];   //大小调整
    self.tableView.tableHeaderView=self.svc.searchBar;
    
    //设置搜索控制器的结果更新代理对象
    self.svc.searchResultsUpdater=self;
    
    //Scope:就是效果图中那个分类选择器
    //self.svc.searchBar.ti=@"城市";
    //为了响应scope改变时候，对选中的scope进行处理 需要设置search代理
    self.svc.searchBar.delegate=self;
    
    self.definesPresentationContext=YES;   //迷之属性，打开后搜索结果页界面显示会比较好。
    //看文档貌似是页面转换模式为UIModalPresentationCurrentContext，如果该选项打开，那么就会使用当前ViewController的一个presentContenxt
    //否则就向父类中进行寻找并使用。
    
    
}
/**普通的tableview展示实现。*/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.allProducts.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier forIndexPath:indexPath];
    Product *p=self.allProducts[indexPath.row];
    cell.textLabel.text=p.name;
    
    return cell;
}

#pragma mark - UISearchResultsUpdating

/**实现更新代理*/
-(void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    //获取scope被选中的下标
    NSInteger selectedType=searchController.searchBar.selectedScopeButtonIndex;
    //获取到用户输入的数据
    NSString *searchText=searchController.searchBar.text;
    NSMutableArray *searchResult=[[NSMutableArray alloc]init];
    for (Product *p in self.allProducts) {
        NSRange range=[p.name rangeOfString:searchText];
        if (range.length>0&&p.type==selectedType) {
            [searchResult addObject:p];
        }
    }
    self.mySRTVC.searchResults=searchResult;
    
    /**通知结果ViewController进行更新*/
    [self.mySRTVC.tableView reloadData];
}

#pragma mark - UISearchBarDelegate
/**点击按钮后，进行搜索页更新*/
-(void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope
{
    [self updateSearchResultsForSearchController:self.svc];
}

@end
