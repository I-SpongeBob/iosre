
//#ifndef AutoLike_h
#define AutoFlash_h

#import <UIKit/UIKit.h>
#import <pthread.h>
#import"CCAutoLikeHeader.h"

@interface AutoFlash : NSObject{

}

-(void)flash:(float)yOffset;
- (void)scroll:(int)i y:(float)yOffset x:(float)xOffset;

@end
