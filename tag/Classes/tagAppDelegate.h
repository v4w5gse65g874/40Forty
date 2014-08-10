//
//  tagAppDelegate.h
//  tag
//
//  Created by ken rufe on 6/27/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LoginScreenUserLoginView;
@class Reachability;

@interface tagAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	LoginScreenUserLoginView *instanceLoginScreenUserLoginView;

    Reachability* internetReach;
    Reachability* wifiReach;
}

- (void) updateInterfaceWithReachability;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) LoginScreenUserLoginView *instanceLoginScreenUserLoginView;
@property (nonatomic, retain) Reachability *internetReach;
@property (nonatomic, retain) Reachability *wifiReach;

@end