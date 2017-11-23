#import "qq.h"
%hook NewMainFrameViewController
- (void)viewDidAppear:(BOOL)animated {
    %log;
    %orig;
    CContactMgr *con = [[%c(CContactMgr) alloc] init];
    CContact *contact  = (CContact *)[con getContactByName:@"kelekaka90"];
    
    NSLog(@"give me value----%@", contact);
    ContactInfoViewController *contactViewController = [[objc_getClass("ContactInfoViewController") alloc] init];
        [contact setM_nsUsrName:@"kelekaka90"];
        [contact setM_nsAntispamTicket:@"v2_7780e774be6ffb56ae41023d9b4f8f4d2855705b2358b3fe16388a07ce1b8b557f647d864d7721838969e7a7a7603a80@stranger"];
        [contact setM_bFromNewDB:1];
        [contact setM_uiType:0];
        [contact setM_uiFriendScene:3];
        [contactViewController setM_contact:contact];
        [contactViewController setM_uiFromScene: 6];
        [contactViewController setM_uiAddFriendStatScene:2];
        [contactViewController updateContactFromServer];
        [contactViewController checkNeedForcedUpdateForMemberDetail];
    UITabBarController *rootViewController = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    UINavigationController *mmNavigation = (UINavigationController *)[rootViewController selectedViewController];
    [mmNavigation  pushViewController:contactViewController animated:YES];
}
%end