//
//  GameView.h
//  tag
//
//  Created by ken rufe on 7/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "GameViewDelegate.h"
#import "MainScreenView.h"
#import "MobclixAds.h"
#import "FBConnect.h"

@class ServerCall;
@class LocationTools;
@class MainScreenView;

@interface GameView : UIViewController <MKMapViewDelegate, GameViewDelegate, FBSessionDelegate, FBRequestDelegate, FBDialogDelegate>	{
	Facebook *fbook;
	NSString *dont_post_fbook;
	NSString *tagged_username;
	MobclixAdView *adView;

	//used for updating the stat labels
	MainScreenView *mainscreen_object;

	//used for player callouts for their statistics
	NSString *playerSelectedCallout;
	
	//start SendLocationAPI responses declaration
	NSString *old_round_time_start;
	NSString *old_game_status;
	NSString *old_round_status;
	NSString *old_time_left_in_cooldown;
	NSString *old_round_end_reason;
	NSString *old_round_num;
	NSString *old_how_many_in_my_zone;
	NSString *old_whose_in_my_zone;
	NSString *old_i_entered_tag_zone;
	NSString *old_time_entered_zone;
	NSString *old_server_time;
	NSString *old_round_time_length;
	NSString *round_time_start;
	NSString *game_status;
	NSString *round_status;
	NSString *time_left_in_cooldown;
	NSString *round_end_reason;
	NSString *round_num;
	NSString *how_many_in_my_zone;
	NSString *whose_in_my_zone;
	NSString *i_entered_tag_zone;
	NSString *time_entered_zone;
	NSString *server_time;
	NSString *round_time_length;
	//end SendLocationAPI responses declaration
	
	NSMutableArray *player_list;
	/*
	 layout is (index):
	 0:username
	 1:latitude
	 2:longitude
	 3:currently_it (0 or 1)
	 4:rank
	 5:score
	 6:undertitle
	 7:tags_in_current_game
	 8:tagged_by_others_in_current_game
	 9:i tagged them x times
	 10:they tagged me y times
	 */
	
	float coordLatitudeDelta;
	float coordLongitudeDelta;
	NSString *it_state;
	NSString *old_it_state;
	NSString *outlast_tag_flag;
	NSString *gameFlag;
	NSTimer *newTimer;
	int game_id;
	int game_find_attempt;
	int server_lock;
	ServerCall *serverCall;
	LocationTools *locationTools;
	NSDictionary *fbook_user;
	NSString *fbook_user_name;
	NSString *kAppId;
	NSDictionary *fbook_json_user;

	IBOutlet MKMapView *gameMap;
	IBOutlet UIView *statisticsView;
	IBOutlet UIView *loadingGame;
	IBOutlet UIView *find_game_ping_fail_view;
	IBOutlet UIView *map_container;
	IBOutlet UIView *game_view;
	IBOutlet UIView *confirm_exit;
	IBOutlet UIView *opts_view;
	IBOutlet UIView *cooldown_view;
	IBOutlet UILabel *statisticsLabel;
	IBOutlet UILabel *loadingGameMessage;
	IBOutlet UILabel *attempt_count_label;
	IBOutlet UILabel *round_time_left_label;
	IBOutlet UILabel *round_number_label;
	IBOutlet UILabel *round_over_label;
	IBOutlet UILabel *cooldown_time_label;
	IBOutlet UILabel *round_end_reason_label;
	IBOutlet UIButton *statisticsButtonClose;
	IBOutlet UIButton *quit;
	IBOutlet UIButton *quit_confirm;
	IBOutlet UIButton *quit_cancel;
	IBOutlet UIButton *opts_button;
	IBOutlet UIButton *opts_done_button;
	IBOutlet UISegmentedControl *map_type_switcher;
	IBOutlet UISwitch *autosize_map;
	IBOutlet UISwitch *show_circle;
	IBOutlet UISwitch *show_line;
	IBOutlet UIButton *find_game_cancel;
	IBOutlet UIActivityIndicatorView *aiv;	
	IBOutlet UIImageView *initialize_background;
	IBOutlet UIImageView *fail_background;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil fabook:fabook;

- (NSString *)do_subtitle_formatting:(int)x;
- (void)gameFlow;
- (void)appendGameLoadingMessage:(NSString *)new_message newline:(BOOL)nl;
- (void)update_tagging_circles;
- (void)update_polylines;
- (void)incrementGame_find_attempt;
- (void)show_ping_fail_view;
- (void)update_players_on_map;
- (void)scrollRegion;
- (void)build_player_list:(NSDictionary *)json_dict;
- (void)doAnnotations;
- (void)setLatitudeDelta: (NSDictionary *)json_dict;
- (void)setLongitudeDelta: (NSDictionary *)json_dict;
- (void)update_time_label;
- (void)update_round_num;
- (void)set_cooldown_time_label;
- (void)set_round_over_label;
- (IBAction)ok_pressed_in_ping_fail_view:(id)sender;
- (IBAction)find_game_cancel_button:(id)sender;
- (void)set_reason_round_end;
- (void)show_cooldown_view;
- (IBAction)statisticsButtonClosePressed:(id)sender;
- (IBAction)quitPressed:(id)sender;
- (IBAction)quit_confirm_pressed:(id)sender;
- (IBAction)quit_cancel_pressed:(id)sender;
- (IBAction)opts_buttonPressed:(id)sender;
- (IBAction)opts_button_donePressed:(id)sender;
- (IBAction)opts_view_switch:(id)sender;
- (IBAction)opts_view_segmented:(id)sender;
- (IBAction)showPlayerStatistics: (id)sender;
- (void)set_mainscreen_object:(MainScreenView *)m_object;
- (void)post_to_fbook_wall_block:(NSString *)message picture:(NSString *)picture link:(NSString *)link name:(NSString *)name caption:(NSString *)caption description:(NSString *)description;

@property (nonatomic, assign) NSTimer *newTimer;
@property (nonatomic, assign) float coordLatitudeDelta;
@property (nonatomic, assign) float coordLongitudeDelta;
@property (nonatomic, assign) int game_find_attempt;
@property (nonatomic, assign) int game_id;
@property (nonatomic, assign) int server_lock;
@property (nonatomic, retain) IBOutlet MobclixAdView* adView;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *aiv;
@property (nonatomic, retain) IBOutlet MKMapView *gameMap;
@property (nonatomic, retain) NSString *gameFlag;
@property (nonatomic, retain) ServerCall *serverCall;
@property (nonatomic, retain) LocationTools *locationTools;
@property (nonatomic, retain) IBOutlet UIView *loadingGame;
@property (nonatomic, retain) IBOutlet UIView *find_game_ping_fail_view;
@property (nonatomic, retain) IBOutlet UIView *statisticsView;
@property (nonatomic, retain) IBOutlet UILabel *loadingGameMessage;
@property (nonatomic, retain) IBOutlet UILabel *round_time_left_label;
@property (nonatomic, retain) IBOutlet UILabel *round_number_label;
@property (nonatomic, retain) IBOutlet UILabel *round_over_label;
@property (nonatomic, retain) IBOutlet UILabel *cooldown_time_label;
@property (nonatomic, retain) IBOutlet UILabel *round_end_reason_label;
@property (nonatomic, retain) IBOutlet UILabel *attempt_count_label;
@property (nonatomic, retain) IBOutlet UILabel *statisticsLabel;
@property (nonatomic, retain) NSMutableArray *player_list;
@property (nonatomic, retain) NSString *it_state;
@property (nonatomic, retain) NSString *old_it_state;
@property (nonatomic, retain) NSString *outlast_tag_flag;
@property (nonatomic, retain) IBOutlet UIView *map_container;
@property (nonatomic, retain) IBOutlet UIView *game_view;
@property (nonatomic, retain) IBOutlet UIView *confirm_exit;
@property (nonatomic, retain) IBOutlet UIView *opts_view;
@property (nonatomic, retain) IBOutlet UIView *cooldown_view;
@property (nonatomic, retain) IBOutlet UIButton *quit;
@property (nonatomic, retain) IBOutlet UIButton *opts_button;
@property (nonatomic, retain) IBOutlet UIButton *opts_done_button;
@property (nonatomic, retain) IBOutlet UISegmentedControl *map_type_switcher;
@property (nonatomic, retain) IBOutlet UISwitch *autosize_map;
@property (nonatomic, retain) IBOutlet UISwitch *show_circle;
@property (nonatomic, retain) IBOutlet UISwitch *show_line;
@property (nonatomic, retain) IBOutlet UIButton *quit_confirm;
@property (nonatomic, retain) IBOutlet UIButton *quit_cancel;
@property (nonatomic, retain) IBOutlet UIButton *statisticsButtonClose;
@property (nonatomic, retain) NSString *round_time_start;
@property (nonatomic, retain) NSString *game_status;
@property (nonatomic, retain) NSString *round_status;
@property (nonatomic, retain) NSString *time_left_in_cooldown;
@property (nonatomic, retain) NSString *round_end_reason;
@property (nonatomic, retain) NSString *round_num;
@property (nonatomic, retain) NSString *how_many_in_my_zone;
@property (nonatomic, retain) NSString *i_entered_tag_zone;
@property (nonatomic, retain) NSString *time_entered_zone;
@property (nonatomic, retain) NSString *whose_in_my_zone;
@property (nonatomic, retain) NSString *server_time;
@property (nonatomic, retain) NSString *round_time_length;
@property (nonatomic, retain) NSString *old_round_time_start;
@property (nonatomic, retain) NSString *old_game_status;
@property (nonatomic, retain) NSString *old_round_status;
@property (nonatomic, retain) NSString *old_time_left_in_cooldown;
@property (nonatomic, retain) NSString *old_round_end_reason;
@property (nonatomic, retain) NSString *old_round_num;
@property (nonatomic, retain) NSString *old_how_many_in_my_zone;
@property (nonatomic, retain) NSString *old_i_entered_tag_zone;
@property (nonatomic, retain) NSString *old_time_entered_zone;
@property (nonatomic, retain) NSString *old_whose_in_my_zone;
@property (nonatomic, retain) NSString *old_server_time;
@property (nonatomic, retain) NSString *old_round_time_length;
@property (nonatomic, retain) MainScreenView *mainscreen_object;
@property (nonatomic, retain) NSString *playerSelectedCallout;
@property (nonatomic, retain) Facebook *fbook;
@property (nonatomic, retain) NSString *dont_post_fbook;
@property (nonatomic, retain) NSString *tagged_username;
@property (nonatomic, retain) NSDictionary *fbook_user;
@property (nonatomic, retain) NSString *fbook_user_name;
@property (nonatomic, retain) NSString *kAppId;
@property (nonatomic, retain) NSDictionary* fbook_json_user;
@property (nonatomic, retain) UIImageView *initialize_background;
@property (nonatomic, retain) UIImageView *fail_background;

@end
