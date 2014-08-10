//
//  PreferencesView.m
//  tag
//
//  Created by ken rufe on 6/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PreferencesView.h"
#import <QuartzCore/QuartzCore.h>

@implementation PreferencesView

@synthesize gameTypeText, gameTypePicker, pref_background, gameDifficultyArray, gameTypesArray;
@synthesize gameDifficultyText, gameDifficultyPicker, game_radius_slider, game_radius_label;


/*
 this takes us back to the main screen after we've chosen
 our preferences
 */
- (IBAction)backToMainScreen:(id)sender	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

//commented out because i'm not using it yet	
//	[user_prefs setObject:gameTypeText.text forKey:@"game_type"];
//	[user_prefs setObject:gameDifficultyText.text forKey:@"game_difficulty"];
	[user_prefs synchronize];
	
	[self.view retain];
	[self.view removeFromSuperview];
}

/*
 button to display gametypepicker
 */
- (IBAction)userClickedGameTypeButton:(id)sender	{
	if (gameTypePicker.hidden == YES) {
		gameTypePicker.hidden = NO;
	}
}

/*
 button to display gamedifficultypicker
 */
- (IBAction)userClickedGameDifficultyButton:(id)sender	{
	if (gameDifficultyPicker.hidden == YES) {
		gameDifficultyPicker.hidden = NO;
	}
}

/*
 user is sliding the game radius slider update the label
 */
- (IBAction)user_sliding_radius:(id)sender	{
	float val1 = game_radius_slider.value;
	int val2 = game_radius_slider.value;
	float test = val1 - val2;
	float val;
	if (test < 0)	{
		test *= -1;
	}
	if (test >=0 && test <.50) {
		val = val2;
	}
	else {
		val = val2 + .5;
	}

	[game_radius_slider setValue:val animated:NO];
	
	NSNumber *n = [NSNumber numberWithFloat:val * 1000];
	game_radius_label.text = [[NSNumber numberWithFloat:val] stringValue];
	
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	[user_prefs setObject:n forKey:@"game_radius"];
	[user_prefs synchronize];
}

/*
 user made a selection in a given pickerview
 */
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	if (pickerView == gameTypePicker) {
		gameTypeText.text = [gameTypesArray objectAtIndex:row];

		if ([gameTypeText.text isEqualToString:@"9 vs 1"]) {
			[user_prefs setObject:@"free_for_all" forKey:@"game_type"];
			[user_prefs synchronize];
		}
		else if([gameTypeText.text isEqualToString:@"Capture the Flag"])	{
			[user_prefs setObject:@"capture_the_flag" forKey:@"game_type"];
			[user_prefs synchronize];
		}
		
		gameTypePicker.hidden = YES;
		
		//save it as a default value
	}
	if (pickerView == gameDifficultyPicker) {
		gameDifficultyText.text = [gameDifficultyArray objectAtIndex:row];
		[user_prefs setObject:gameDifficultyText.text forKey:@"game_difficulty"];
		[user_prefs synchronize];
		gameDifficultyPicker.hidden = YES;
	}
}

/*
 this DELEGATE OVERIDDED function shows the game type 
 table for selection of game type
*/ 
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField	{
	if (textField == gameTypeText)	{
		//show the picker
		gameTypePicker.hidden = NO;
		gameDifficultyPicker.hidden = YES;
	}
	if (textField == gameDifficultyText) {
		//show the picker
		gameDifficultyPicker.hidden = NO;
		gameTypePicker.hidden = YES;
	}

	//repress keyboard
	return NO;
}

/*
 for our purposes currently we'll leave this at 1
 */
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView	{
	if (pickerView == gameTypePicker)	{
		return 1;
	}
	if (pickerView == gameDifficultyPicker)	{
		return 1;
	}
	
	return 0;
}

/*
 this is built by the array in viewDidLoad
 */
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component	{
	if (pickerView == gameTypePicker) {
		return [gameTypesArray count];
	}
	if (pickerView == gameDifficultyPicker) {
		return [gameDifficultyArray count];
	}
	
	return 0;
}

/*
 again, built by the array
 */
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component	{
	if (pickerView == gameTypePicker) {
		return [gameTypesArray objectAtIndex:row];
	}
	if (pickerView == gameDifficultyPicker) {
		return [gameDifficultyArray objectAtIndex:row];
	}
	
	return @"";
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	
	[pref_background.layer setMasksToBounds:YES];
	pref_background.layer.cornerRadius = 20;

    [super viewDidLoad];
	
	//hide picker view
	gameTypePicker.hidden = YES;
	gameDifficultyPicker.hidden = YES;
	
	if ([user_prefs stringForKey:@"game_type"] == NULL) {
		gameTypeText.text = @"9 vs 1";
	}
	else {
		if ([[user_prefs stringForKey:@"game_type"] isEqualToString:@"free_for_all"]) {
			gameTypeText.text = @"9 vs 1";
		}
		else if([[user_prefs stringForKey:@"game_type"] isEqualToString:@"capture_the_flag"]) {
			gameTypeText.text = @"Capture the Flag";
		}
	}

	if ([user_prefs stringForKey:@"game_difficulty"] == NULL) {
		gameDifficultyText.text = @"Easy";
	}
	else {
		gameDifficultyText.text = [user_prefs stringForKey:@"game_difficulty"];
	}

	if ([user_prefs integerForKey:@"game_radius"] != NO)	{
		//Radius in preferences (same value, not two different ones):
		//	MAX radius they'll join (they must also be inside the game radius they try to join and it must
		//be less than the radius found in their preferences)
		//	RADIUS that is created if they're hosting a game
		NSNumber *n = [NSNumber numberWithInt:[[user_prefs stringForKey:@"game_radius"] intValue]];
		game_radius_label.text = [[NSNumber numberWithFloat:[n floatValue] / 1000.0] stringValue];
		[game_radius_slider setValue:[[NSNumber numberWithFloat:[n floatValue] / 1000] floatValue]];
	}
	else {
		NSNumber *n = [NSNumber numberWithFloat:3000.0];
		game_radius_label.text = [[NSNumber numberWithFloat:[n floatValue] / 1000.0] stringValue];
		[game_radius_slider setValue:[[NSNumber numberWithFloat:[n floatValue] / 1000] floatValue]];
		[user_prefs setObject:n forKey:@"game_radius"];
		[user_prefs synchronize];
	}

	
	//array of game types, FFA will only be for free version
	gameTypesArray = [[NSMutableArray alloc] init];
	[gameTypesArray addObject:@"9 vs 1"];
	[gameTypesArray addObject:@"Capture the Flag"];
	
	//array of game difficulties, easy will only be for free version
	gameDifficultyArray = [[NSMutableArray alloc] init];
	[gameDifficultyArray addObject:@"Easy"];
	[gameDifficultyArray addObject:@"Medium"];
	[gameDifficultyArray addObject:@"Hard"];
	[gameDifficultyArray addObject:@"Hardcore"];
	
	//xxx removing the difficulty and game type buttons for right now
	//i hid the buttons and labels for it too
	gameTypeText.hidden = YES;
	gameDifficultyText.hidden = YES;
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
	[gameTypeText release];
	[gameTypePicker release];
	[gameDifficultyText release];
	[gameDifficultyPicker release];
	[game_radius_label release];
	[game_radius_slider release];
	[pref_background release];
	[gameTypesArray release];
	[gameDifficultyArray release];
	
    [super dealloc];
}


@end