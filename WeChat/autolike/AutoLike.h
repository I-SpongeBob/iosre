
//#ifndef AutoLike_h
#define AutoLike_h

#import <UIKit/UIKit.h>
#import <pthread.h>
#import"CCAutoLikeHeader.h"

@interface AutoLike : NSObject{

}

-(void)ccStartAutoLike:(int)i;
-(void)loadAll:(unsigned)_judgetime;
-(void)start;

@end
