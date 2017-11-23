//
//  Product.h
//  SearchBarDemo
//
//  Created by 胡翔 on 2017/1/5.
//  Copyright © 2017年 胡翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSUInteger type;

- (instancetype)initWithName:(NSString *)name
                        type:(NSUInteger)type;

+ (NSArray *)demoData;
@end
