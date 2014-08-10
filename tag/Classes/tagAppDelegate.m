//
//  tagAppDelegate.m
//  tag
//
//  Created by ken rufe on 6/27/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "tagAppDelegate.h"
#import "LoginScreenUserLoginView.h"
#import "FBConnect.h"
#import "Mobclix.h"
#import "Reachability.h"

@implementation tagAppDelegate

@synthesize window, instanceLoginScreenUserLoginView, internetReach, wifiReach;

- (void)applicationDidBecomeActive:(UIApplication *)application	{
    // Observe the kNetworkReachabilityChangedNotification. When that notification is posted, the
    // method "reachabilityChanged" will be called. 
    [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(reachabilityChanged:) name: kReachabilityChangedNotification object: nil];
	
	internetReach = [[Reachability reachabilityForInternetConnection] retain];
	[internetReach startNotifier];
	
	wifiReach = [[Reachability reachabilityForLocalWiFi] retain];
	[wifiReach startNotifier];
	
	[self updateInterfaceWithReachability];
	
	[internetReach release];
	[wifiReach release];
}

- (void) updateInterfaceWithReachability
{
	NetworkStatus internetStatus = [internetReach currentReachabilityStatus];
	NetworkStatus wifiStatus = [wifiReach currentReachabilityStatus];

	if (internetStatus == NotReachable && wifiStatus == NotReachable) {
		//alert since user can't connect and therefore can't play
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Network Status" message:@"WWAN and WiFi is not available. Please try again later." delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
	}
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];


	//first time running, lets see if anything i need is null
	if ([user_prefs stringForKey:@"map_type"] == NULL) {
		[user_prefs setValue:@"standard" forKey:@"map_type"];
	}
	
	if ([user_prefs stringForKey:@"show_line"] == NULL) {
		[user_prefs setValue:@"1" forKey:@"show_line"];		
	}
	
	if ([user_prefs stringForKey:@"show_circle"] == NULL) {
		[user_prefs setValue:@"1" forKey:@"show_circle"];
	}
	
	if ([user_prefs stringForKey:@"autosize_map"] == NULL) {
		[user_prefs setValue:@"0" forKey:@"autosize_map"];
	}
	
	if ([user_prefs stringForKey:@"game_type"] == NULL) {
		[user_prefs setObject:@"free_for_all" forKey:@"game_type"];
		[user_prefs synchronize];
	}
	
	if ([user_prefs stringForKey:@"game_difficulty"] == NULL) {
		[user_prefs setObject:@"easy" forKey:@"game_difficulty"];
		[user_prefs synchronize];
	}
	
	if ([user_prefs integerForKey:@"game_radius"] == 0)	{
		NSNumber *n = [NSNumber numberWithInt:3000];
		[user_prefs setObject:n forKey:@"game_radius"];
		[user_prefs synchronize];
	}
	//end first time running potential
	
	[user_prefs synchronize];
	
	
	LoginScreenUserLoginView *aLoginScreenUserLoginView = [[LoginScreenUserLoginView alloc] initWithNibName:@"LoginScreenUserLoginView" bundle:[NSBundle mainBundle]];
	[self setInstanceLoginScreenUserLoginView:aLoginScreenUserLoginView];
	[aLoginScreenUserLoginView release];
	
	[window addSubview:[instanceLoginScreenUserLoginView view]];
	
	//had to add this to make iOS 4 work
	[window makeKeyAndVisible];
	
	// Add this line to start up Mobclix
	[Mobclix startWithApplicationId:@"DEAA007D-E466-4AEB-AC4A-8B903C92F697"];
	
	return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url	{
	return [[instanceLoginScreenUserLoginView fbook] handleOpenURL:url];
}

- (void)dealloc {
    [window release];
	[instanceLoginScreenUserLoginView release];
	
    [super dealloc];
}

@end