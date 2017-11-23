//
//  SetVpn.m
//  
//
//  Created by 谢如昕 on 2017/9/27.
//
//

#import <Foundation/Foundation.h>
#import "SetVpn.h"
#import "qq.h"
@implementation SetVpn

- (void) start{
    NSBundle* VPNPreferences=[NSBundle bundleWithPath:@"/System/Library/PreferenceBundles/VPNPreferences.bundle"];
    BOOL x=[VPNPreferences load];
    NSLog(@" %@" ,x?@"YES":@"NO");
    Class VPC=objc_getClass("VPNBundleController");
    VPNBundleController* VPNBC=[[VPC alloc] initWithParentListController:nil];
    NSLog(@" %@" ,VPNBC);
    BOOL y=[VPNBC respondsToSelector:@selector(setVPNActive:)];
    NSLog(@" %@" ,y?@"YES":@"NO");
    if([VPNBC respondsToSelector:@selector(setVPNActive:)]){
        [VPNBC setVPNActive:YES];
    }
    else if([VPNBC respondsToSelector:@selector(_setVPNActive:)]){
        [VPNBC _setVPNActive:YES];
    }
}
- (void) deleteVPN{
    NSBundle* VPNPreferences=[NSBundle bundleWithPath:@"/System/Library/PreferenceBundles/VPNPreferences.bundle"];
    [VPNPreferences load];
    VPNConnectionStore* vpnStore = [objc_getClass("VPNConnectionStore") sharedInstance];
    NEConfiguration* cfg=[[vpnStore configurations] objectAtIndex:0];
    NSString* uuid = [[cfg identifier] UUIDString];
    [vpnStore deleteVPNWithServiceID:uuid];
}
@end
