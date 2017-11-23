//
//  ViewController.m
//  SearchBarDemo
//
//  Created by 胡翔 on 2017/1/5.
//  Copyright © 2017年 胡翔. All rights reserved.
//

#import "ViewController.h"
#import "Before8ViewController.h"
#import "After8ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
static NSString *const kTitleBefore8 = @"UISearchBar(Before iOS8)";
static NSString *const kTitleAfter8 = @"UISearchController(After iOS8)";
static NSString *const kReuseIdentifier = @"CellReuseIdentifier";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = YES;
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - UITableViewDataSource/Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kReuseIdentifier];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = kTitleBefore8;
    }else {
        cell.textLabel.text = kTitleAfter8;
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        Before8ViewController *before8VC = [[Before8ViewController alloc] init];
        [self.navigationController pushViewController:before8VC animated:YES];
    }else {
        After8ViewController *after8VC = [[After8ViewController alloc] init];
        [self.navigationController pushViewController:after8VC animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
