//
//  MainScreenView.m
//  tag
//
//  Created by ken rufe on 6/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

/*
 =============================
 in log in screen do this code:
=============================== 
 
 NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
 
 if ([user_prefs stringForKey:@"game_type"] == NULL) {
 [user_prefs setObject:@"9 vs 1" forKey:@"game_type";
 }
 
 if ([user_prefs stringForKey:@"game_difficulty"] == NULL) {
 [user_prefs setObject:@"Easy" forKey:@"game_difficulty";
 }
 
 
 */
#import "MainScreenView.h"
#import "PreferencesView.h"
#import "GameView.h"
#import "LoginScreenUserLoginView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MainScreenView

@synthesize fbook, instancePreferencesView, instanceGameView, instanceLoginScreenUserLoginView, currentGameTypeLabel, currentUndertitleLabel, currentUsernameLabel, currentOverallRankLabel, currentOverallScoreLabel;
@synthesize open_webpage, about_background, stats_background, joingame_background, showHelpViewButton, helpViewDoneButton, helpViewLabel, helpView, showStatisticsViewButton, statisticsViewDoneButton, statisticsViewStatsLabel, statisticsViewUsernameLabel, statisticsView;

/*
 webpage link was pressed open it in safari
 */
- (IBAction)open_webpage_pressed:(id)sender	{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.40forty.com"]];
}

/*
 this function takes us to the game, join!!
 */
- (IBAction)joinGameButton:(id)sender	{
	GameView *aGameView = [[GameView alloc] initWithNibName:@"GameView" bundle:[NSBundle mainBundle] fabook:fbook];
	[self setInstanceGameView:aGameView];
	
	[self.view addSubview:aGameView.view];
	
	[aGameView set_mainscreen_object:self];
	
	[aGameView release];
}

/*
 this function takes us to the Preferences view
 */
- (IBAction)preferencesButton:(id)sender	{
	PreferencesView *aPreferencesView = [[PreferencesView alloc] initWithNibName:@"PreferencesView" bundle:[NSBundle mainBundle]];
	[self setInstancePreferencesView:aPreferencesView];
	
	[self.view addSubview:aPreferencesView.view];

	[aPreferencesView release];
}

- (IBAction)myStatisticsButton:(id)sender	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	NSString *msg = [[NSString alloc] initWithFormat:@"%@'s Statistics", [user_prefs objectForKey:@"username"]];	
	
	NSString *stat_msg = [[NSString alloc] initWithFormat:@"Undertitle:  %@\nOverall rank:  %@\nOverall Score:  %@\nOverall Players:  %@\n",
						  [user_prefs objectForKey:@"stats_undertitle"],
						  [user_prefs objectForKey:@"stats_overall_rank"],
						  [user_prefs objectForKey:@"stats_overall_score"],
						  [user_prefs objectForKey:@"stats_overall_players"]];
	
	statisticsViewStatsLabel.text = stat_msg;
	statisticsViewUsernameLabel.text = msg;
	
	[msg release];
	[stat_msg release];
	
	[self.view addSubview:statisticsView];
}

- (IBAction)myHelpButton:(id)sender	{
	[self.view addSubview:helpView];
}

- (IBAction)helpViewDoneClick:(id)sender	{
	[helpView removeFromSuperview];
}

/*
 this function logs the user out (the actual username remove happens in viewDidLoad in LoginScreenUserLogin class)
 */
- (IBAction)logOutButton:(id)sender	{
	//for right now login retrieves user's info on Free For All in my webserver so i should set that to this so
	//user isn't confused.
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	[user_prefs setObject:@"free_for_all" forKey:@"game_type"];
	[user_prefs synchronize];
	
	[self.view removeFromSuperview];
	
	LoginScreenUserLoginView *aLoginScreenUserLoginView = [[LoginScreenUserLoginView alloc] initWithNibName:@"LoginScreenUserLoginView" bundle:[NSBundle mainBundle]];
	[self setInstanceLoginScreenUserLoginView:aLoginScreenUserLoginView];
	
	[self.view addSubview:aLoginScreenUserLoginView.view];
	
	[aLoginScreenUserLoginView release];	
}


 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil fabook:fabook {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
		self.fbook = fabook;
    }
	
    return self;
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	[joingame_background.layer setMasksToBounds:YES];
	joingame_background.layer.cornerRadius = 20;
	[stats_background.layer setMasksToBounds:YES];
	stats_background.layer.cornerRadius = 20;
	[about_background.layer setMasksToBounds:YES];
	about_background.layer.cornerRadius = 20;

	if ([[user_prefs stringForKey:@"game_type"] isEqualToString:@"free_for_all"]) {
		currentGameTypeLabel.text = @"9 vs 1";
	}
	else if([[user_prefs stringForKey:@"game_type"] isEqualToString:@"capture_the_flag"])	{
		currentGameTypeLabel.text = @"Capture the Flag";
	}

	[self set_stats_labels];
	
    [super viewDidLoad];
}

/*
 sets the labels for statistics
 */
- (void)set_stats_labels	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	currentUsernameLabel.text = [user_prefs stringForKey:@"username"];
	currentOverallScoreLabel.text = [NSString stringWithFormat:@"Score: %@", [user_prefs stringForKey:@"overall_score"]];
	currentOverallRankLabel.text = [NSString stringWithFormat:@"Ranked #%@ out of %@ players", [user_prefs stringForKey:@"overall_rank"], [user_prefs stringForKey:@"overall_players"]];
	currentUndertitleLabel.text = [user_prefs stringForKey:@"undertitle"];
}

/*
 user finished on the stats page
 */
- (IBAction)statsViewDoneClick:(id)sender	{
	[statisticsView removeFromSuperview];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[currentGameTypeLabel release];
	[currentUndertitleLabel release];
	[currentUsernameLabel release];
	[currentOverallScoreLabel release];
	[currentOverallRankLabel release];
	[fbook release];
	[statisticsViewUsernameLabel release];
	[statisticsViewStatsLabel release];
	[statisticsViewDoneButton release];
	[open_webpage release];
	[showStatisticsViewButton release];
	[helpViewLabel release];
	[helpViewDoneButton release];
	[showHelpViewButton release];
	[joingame_background release];
	[stats_background release];
	[about_background release];

	[helpView release];
	[statisticsView release];
	[instancePreferencesView release];
	[instanceGameView release];
	[instanceLoginScreenUserLoginView release];
	
    [super dealloc];
}


@end
