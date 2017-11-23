//
//  MyViewController.m
//  SearchBarDemo
//
//  Created by 谢如昕 on 23/08/2017.
//  Copyright © 2017 胡翔. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *temlable = [[UILabel alloc]initWithFrame:CGRectMake(30, 50, 200, 100)];
    temlable.text = @"温度";
    UILabel *temlable1 = [[UILabel alloc]initWithFrame:CGRectMake(30, 150, 200, 100)];
    temlable1.text = @"空气污染";
    UILabel *temlable2 = [[UILabel alloc]initWithFrame:CGRectMake(30, 250, 200, 100)];
    temlable2.text = @"湿度";
    UILabel *temlable3 = [[UILabel alloc]initWithFrame:CGRectMake(30, 350, 200, 100)];
    temlable3.text = @"风力";
    UILabel *temlable4 = [[UILabel alloc]initWithFrame:CGRectMake(30, 450, 200, 100)];
    temlable4.text = @"天气状况";
    UILabel *temlable5 = [[UILabel alloc]initWithFrame:CGRectMake(30, 550, 200, 100)];
    temlable5.text = @"适宜服饰";
    [self.view addSubview:temlable];
    [self.view addSubview:temlable1];
    [self.view addSubview:temlable2];
    [self.view addSubview:temlable3];
    [self.view addSubview:temlable4];
    [self.view addSubview:temlable5];
    
    UITextView *view = [[UITextView alloc]initWithFrame:CGRectMake(230, 80, 200, 100)];
    view.text = @"温度";
    UITextView *view1 = [[UITextView alloc]initWithFrame:CGRectMake(230, 180, 200, 100)];
    view1.text = @"空气污染";
    UITextView *view2 = [[UITextView alloc]initWithFrame:CGRectMake(230, 280, 200, 100)];
    view2.text = @"湿度";
    UITextView *view3 = [[UITextView alloc]initWithFrame:CGRectMake(230, 380, 200, 100)];
    view3.text = @"风力";
    UITextView *view4 = [[UITextView alloc]initWithFrame:CGRectMake(230, 480, 200, 100)];
    view4.text = @"天气状况";
    UITextView *view5 = [[UITextView alloc]initWithFrame:CGRectMake(230, 580, 200, 100)];
    view5.text = @"适宜服饰";
     [self.view addSubview:view];
     [self.view addSubview:view1];
     [self.view addSubview:view2];
     [self.view addSubview:view3];
     [self.view addSubview:view4];
     [self.view addSubview:view5];
    [self get];
    // Do any additional setup after loading the view.
}

-(void)get{
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *str =@"http://test1.ops.aliyun-beijing.lingyongqian.net:8585/getWeather?province=beijing";
    str = [str stringByAppendingString:@""];
    //NSString *urlEncode = [str stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *url = [NSURL URLWithString:str];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //request.HTTPMethod = @“POST”;
    
    
    
    // request.HTTPBody = [@“” dataUsingEncoding:NSUTF8StringEncoding];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^
                                      (NSData * _Nullable data,NSURLResponse * _Nullable response,NSError * _Nullable error) {
                                          NSArray  *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                                          NSLog(@"%@",dict);
                                      }];
    [dataTask resume];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
