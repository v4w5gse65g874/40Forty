//
//  MainScreenView.h
//  tag
//
//  Created by ken rufe on 6/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"

@class PreferencesView;
@class GameView;
@class LoginScreenUserLoginView;

@interface MainScreenView : UIViewController <FBSessionDelegate> {
	Facebook *fbook;
	
	PreferencesView *instancePreferencesView;
	GameView *instanceGameView;
	LoginScreenUserLoginView *instanceLoginScreenUserLoginView;

	IBOutlet UIButton *showStatisticsViewButton;
	IBOutlet UIButton *showHelpViewButton;
	IBOutlet UIButton *open_webpage;
	
	IBOutlet UILabel *currentGameTypeLabel;
	IBOutlet UILabel *currentUsernameLabel;
	IBOutlet UILabel *currentUndertitleLabel;
	IBOutlet UILabel *currentOverallScoreLabel;
	IBOutlet UILabel *currentOverallRankLabel;
	
	IBOutlet UIView *statisticsView;
	IBOutlet UILabel *statisticsViewUsernameLabel;
	IBOutlet UILabel *statisticsViewStatsLabel;
	IBOutlet UIButton *statisticsViewDoneButton;

	IBOutlet UIView *helpView;
	IBOutlet UILabel *helpViewLabel;
	IBOutlet UIButton *helpViewDoneButton;
	
	IBOutlet UIImageView *joingame_background;
	IBOutlet UIImageView *stats_background;
	IBOutlet UIImageView *about_background;
}

- (IBAction)joinGameButton:(id)sender;
- (IBAction)preferencesButton:(id)sender;
- (IBAction)myStatisticsButton:(id)sender;
- (IBAction)myHelpButton:(id)sender;
- (IBAction)logOutButton:(id)sender;
- (IBAction)statsViewDoneClick:(id)sender;
- (IBAction)helpViewDoneClick:(id)sender;
- (IBAction)open_webpage_pressed:(id)sender;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil fabook:fabook;

- (void)set_stats_labels;

@property (nonatomic, retain) PreferencesView *instancePreferencesView;
@property (nonatomic, retain) GameView *instanceGameView;
@property (nonatomic, retain) LoginScreenUserLoginView *instanceLoginScreenUserLoginView;
@property (nonatomic, retain) UILabel *currentGameTypeLabel;
@property (nonatomic, retain) UILabel *currentUndertitleLabel;
@property (nonatomic, retain) UILabel *currentUsernameLabel;
@property (nonatomic, retain) UILabel *currentOverallScoreLabel;
@property (nonatomic, retain) UILabel *currentOverallRankLabel;
@property (nonatomic, retain) Facebook *fbook;
@property (nonatomic, retain) UIView *statisticsView;
@property (nonatomic, retain) UILabel *statisticsViewUsernameLabel;
@property (nonatomic, retain) UILabel *statisticsViewStatsLabel;
@property (nonatomic, retain) UIButton *statisticsViewDoneButton;
@property (nonatomic, retain) UIButton *open_webpage;
@property (nonatomic, retain) UIButton *showStatisticsViewButton;
@property (nonatomic, retain) UIView *helpView;
@property (nonatomic, retain) UILabel *helpViewLabel;
@property (nonatomic, retain) UIButton *helpViewDoneButton;
@property (nonatomic, retain) UIButton *showHelpViewButton;
@property (nonatomic, retain) UIImageView *joingame_background;
@property (nonatomic, retain) UIImageView *stats_background;
@property (nonatomic, retain) UIImageView *about_background;

@end
