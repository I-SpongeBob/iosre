//
//  MySearchResultViewController.m
//  SearchBarDemo
//
//  Created by 胡翔 on 2017/1/5.
//  Copyright © 2017年 胡翔. All rights reserved.
//

#import "MySearchResultViewController.h"
#import "Product.h"
#import "MyViewController.h"

@interface MySearchResultViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

static NSString *const kReuseIdentifier = @"CellReuseIdentifier";

@implementation MySearchResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kReuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.searchResults.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier forIndexPath:indexPath];
    Product *p=self.searchResults[indexPath.row];
    cell.textLabel.text=p.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MyViewController *newVC = [[MyViewController alloc] init];
    Product *p=self.searchResults[indexPath.row];
    newVC.title = p.name;
    //newVC.view.backgroundColor = [UIColor lightGrayColor];
    [self.mainSearchController.navigationController pushViewController:newVC animated:YES];
}
@end
