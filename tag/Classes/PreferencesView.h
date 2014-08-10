//
//  PreferencesView.h
//  tag
//
//  Created by ken rufe on 6/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//todo xxx on game type change and ok, call update stats for join game page stat display - not implemented yet.  only doing 9vs1 for right now

@interface PreferencesView : UIViewController <UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>	{
	IBOutlet UITextField *gameTypeText;
	IBOutlet UIPickerView *gameTypePicker;
	
	IBOutlet UITextField *gameDifficultyText;
	IBOutlet UIPickerView *gameDifficultyPicker;
	
	IBOutlet UILabel *game_radius_label;
	IBOutlet UISlider *game_radius_slider;
	
	NSMutableArray *gameTypesArray;
	NSMutableArray *gameDifficultyArray;
	
	IBOutlet UIImageView *pref_background;
}

- (IBAction)backToMainScreen:(id)sender;
- (IBAction)userClickedGameTypeButton:(id)sender;
- (IBAction)userClickedGameDifficultyButton:(id)sender;
- (IBAction)user_sliding_radius:(id)sender;

@property (nonatomic, retain) IBOutlet UITextField *gameTypeText;
@property (nonatomic, retain) IBOutlet UIPickerView *gameTypePicker;
@property (nonatomic, retain) IBOutlet UITextField *gameDifficultyText;
@property (nonatomic, retain) IBOutlet UIPickerView *gameDifficultyPicker;
@property (nonatomic, retain) IBOutlet UILabel *game_radius_label;
@property (nonatomic, retain) IBOutlet UISlider *game_radius_slider;
@property (nonatomic, retain) NSMutableArray *gameTypesArray;
@property (nonatomic, retain) NSMutableArray *gameDifficultyArray;
@property (nonatomic, retain) UIImageView *pref_background;

@end