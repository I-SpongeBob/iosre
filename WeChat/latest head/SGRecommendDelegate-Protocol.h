//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "NSObject.h"

@class WAShowOutItemData;

@protocol SGRecommendDelegate <NSObject>

@optional
- (void)onCancelInteractivePush;
- (void)onFinishInteractivePush;
- (void)onTouchUpdateInteractivePushPercent:(double)arg1;
- (void)onTouchBeginInteractivePush;
- (void)onClickWeAppOutItem:(WAShowOutItemData *)arg1;
- (void)onLaunchWeAppList;
@end
