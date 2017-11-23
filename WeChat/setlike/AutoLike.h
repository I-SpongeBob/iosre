
//#ifndef AutoLike_h
#define AutoLike_h

#import <UIKit/UIKit.h>
#import <pthread.h>
#import"CCAutoLikeHeader.h"

@interface AutoLike : NSObject{

}

-(void)ccStartAutoLike;
-(void)ccUpdateDataItemsWithNumber:(int)number;
//-(id)tableView:(id)view cellForRowAtIndexPath:(id)indexPath;
//-(int)numberOfSectionsInTableView:(id)tableView;
//-(void)reloadTableView;
-(void)start;

@end
