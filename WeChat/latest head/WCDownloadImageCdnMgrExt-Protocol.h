//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "NSObject.h"

@class WCMediaItem;

@protocol WCDownloadImageCdnMgrExt <NSObject>
- (void)onImageDownloadFail:(WCMediaItem *)arg1 downloadType:(int)arg2;
- (void)onImageDownloadSuccess:(WCMediaItem *)arg1 downloadType:(int)arg2;
@end
