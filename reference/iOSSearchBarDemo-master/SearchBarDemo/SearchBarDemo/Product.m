//
//  Product.m
//  SearchBarDemo
//
//  Created by 胡翔 on 2017/1/5.
//  Copyright © 2017年 胡翔. All rights reserved.
//

#import "Product.h"

@implementation Product
- (instancetype)initWithName:(NSString *)name
                        type:(NSUInteger)type {
    if (self = [super init]) {
        _name = name;
        _type = type;
    }
    return self;
}

+ (NSArray *)demoData {
    Product *iPhone5 = [[Product alloc] initWithName:@"Beijing" type:0];
    Product *iPhone6 = [[Product alloc] initWithName:@"Shanghai" type:0];
    Product *watch = [[Product alloc] initWithName:@"Shenzhen" type:0];
    Product *osx = [[Product alloc] initWithName:@"Tianjin" type:1];
    Product *capsule = [[Product alloc] initWithName:@"Hangzhou" type:2];
    return @[iPhone5,iPhone6,watch,osx,capsule];
}
@end
