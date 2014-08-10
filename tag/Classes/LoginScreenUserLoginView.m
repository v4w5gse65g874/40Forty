//
//  LoginScreenUserLoginView.m
//  tag
//
//  Created by ken rufe on 9/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LoginScreenUserLoginView.h"
#import "ServerCall.h"
#import "RegexKitLite.h"
#import "MainScreenView.h"
#import "SBJsonParser.h"
#import "FBConnect.h"
#import <QuartzCore/QuartzCore.h>

@implementation LoginScreenUserLoginView

@synthesize activeScrollView, _permissions, fbook, create_user_cancel_button, create_user_view, create_user_button, login, username, password;
@synthesize usercreate_background, dialog_background, flag, aiv_create, error_message_create, new_email, activeField, login_scrollview, create_user_scrollview, new_password2, new_password1, new_username, create_user_ok_button, error_message, call1, instanceMainScreenView, aiv;

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
	[self.dialog_background.layer setMasksToBounds:YES];
	self.dialog_background.layer.cornerRadius = 20;

	[self.usercreate_background.layer setMasksToBounds:YES];
	self.usercreate_background.layer.cornerRadius = 20;
		
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	
	[self registerForKeyboardNotifications];
	
	[user_prefs setObject:@"" forKey:@"username"];
	[user_prefs synchronize];
	
	self.error_message.text = @"";
	[self.username setPlaceholder:@"Username"];
	[self.password setPlaceholder:@"Password"];
	[self.password setSecureTextEntry:YES];
	ServerCall *scall;
	scall = [[ServerCall alloc] init];
	scall.user_login_delegate = self;
	self.call1 = scall;
	[scall release];
	
	self.login.enabled = YES;
	self.aiv.hidden = YES;
	keyboardShown = NO;
	
    [super viewDidLoad];
	
	self.flag = @"1";
	
	Facebook *fbook1 = [[Facebook alloc] initWithAppId:@"165680910129548"];
	self.fbook = fbook1;
	[fbook1 release];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

/*
 try to log in via our ServerCall class
 */
- (void)login_attempt	{
	[self.call1 try_to_log_in:self.username.text password:self.password.text];
}

/*
 try to create a user via our ServerCall class
 */
- (void)user_create_attempt	{
	[self.call1 try_to_create_user:self.new_username.text password:self.new_password1.text email:self.new_email.text];
}

/*
 our custom delegate method
 */
- (void)user_login_response	{
	if ([self.flag isEqualToString:@"1"]) {
		//check to see if user is cancelling
		if ([self.login.currentTitle isEqualToString:@"Login"]) {
			//yes, they pressed cancel.  just return.
			return;
		}
		
		
		
		
		//user login

		ServerCall *tt = self.call1;
		
		SBJsonParser *parser = [[SBJsonParser alloc] init];
		NSDictionary *json_dict = [parser objectWithString:tt.server_response];
		[parser release];
		
		if ([[json_dict valueForKey:@"resp"] isEqualToString:@"okweloggedin"]) {
			//login was successful
			
			/*
			 FACEBOOK AUTHZ
			 */
			if (_permissions) {
				[_permissions release];
			}
			
			_permissions =  [[NSArray arrayWithObjects:
							  @"read_stream", @"publish_stream", nil] retain];
			
			[self.fbook authorize:_permissions delegate:self];
			
			/*
			 END FACEBOOK AUTHZ
			 */
			
			NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

			//main screen page information
			[user_prefs setObject:self.username.text forKey:@"username"];
			[user_prefs setObject:[json_dict valueForKey:@"undertitle"] forKey:@"undertitle"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_rank"] forKey:@"overall_rank"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_score"] forKey:@"overall_score"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_players"] forKey:@"overall_players"];

			[user_prefs setObject:[json_dict valueForKey:@"undertitle"] forKey:@"stats_undertitle"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_rank"] forKey:@"stats_overall_rank"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_score"] forKey:@"stats_overall_score"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_players"] forKey:@"stats_overall_players"];
			
			[user_prefs synchronize];

			self.username.text = @"";
			[self.username setPlaceholder:@"Username"];
			self.password.text = @"";
			[self.password setPlaceholder:@"Password"];
			self.error_message.text = @"";

			self.create_user_button.enabled = YES;
			[self.login setTitle:@"Login" forState:UIControlStateNormal];

			self.aiv.hidden = YES;
			
			MainScreenView *aMainScreenView = [[MainScreenView alloc] initWithNibName:@"MainScreenView" bundle:[NSBundle mainBundle] fabook:self.fbook];
			[self setInstanceMainScreenView:aMainScreenView];
		
			[self.view addSubview:aMainScreenView.view];
		
			[aMainScreenView release];
		}
		else if([[json_dict valueForKey:@"resp"] isEqualToString:@"error"])	{
			//login timed out?  an error occurred?  i'm setting this to "error" in ServerCall.m delegate didFail method
			self.error_message.text = @"Internal error, try again later";
			self.aiv.hidden = YES;

			self.create_user_button.enabled = YES;
			[self.login setTitle:@"Login" forState:UIControlStateNormal];

			self.password.text =@"";
			[self.password setPlaceholder:@"Password"];
		}
		else if([[json_dict valueForKey:@"resp"] isEqualToString:@"incorrectuserorpass"])	{
			//uh, something else was returned, just ignore it/show error message
			self.error_message.text = @"Username or Password Incorrect";

			self.aiv.hidden = YES;
			self.create_user_button.enabled = YES;
			[self.login setTitle:@"Login" forState:UIControlStateNormal];

			self.password.text =@"";
			[self.password setPlaceholder:@"Password"];
		}
		else {
			//other custom error.  maybe user's length was too long.
			self.error_message.text = [json_dict valueForKey:@"resp"];

			self.aiv.hidden = YES;
			self.create_user_button.enabled = YES;
			[self.login setTitle:@"Login" forState:UIControlStateNormal];

			self.password.text =@"";
			[self.password setPlaceholder:@"Password"];
		}

		[self.username resignFirstResponder];
		[self.password resignFirstResponder];
	}
	else if([self.flag isEqualToString:@"2"])	{
		//user create
	
		ServerCall *tt = self.call1;
		
		SBJsonParser *parser = [[SBJsonParser alloc] init];
		NSDictionary *json_dict = [parser objectWithString:tt.server_response];
		[parser release];
		
		if ([[json_dict valueForKey:@"resp"] isEqualToString:@"ok"]) {
			//usercreate was successful
			
			self.username.text = self.new_username.text;
			self.password.text = self.new_password1.text;
			self.error_message.text = @"User Created!";

			self.new_username.text = @"";
			[self.new_username setPlaceholder:@"Desired Username"];
			self.new_password1.text = @"";
			[self.new_password1 setPlaceholder:@"Password"];
			self.new_password2.text = @"";
			[self.new_password2 setPlaceholder:@"Repeat password"];
			self.new_email.text = @"";
			[self.new_email setPlaceholder:@"Your Email Address"];
			self.error_message_create.text = @"";
			self.create_user_ok_button.enabled = YES;
			self.create_user_cancel_button.enabled = YES;
			self.aiv_create.hidden = YES;

			self.flag = @"1";

			[self.create_user_view removeFromSuperview];
		}
		else if([[json_dict valueForKey:@"resp"] isEqualToString:@"error"])	{
			//login timed out?  an error occurred?  i'm setting this to "error" in ServerCall.m delegate didFail method
			self.error_message_create.text = @"Internal error, try again later";
			self.aiv_create.hidden = YES;
			
			self.create_user_ok_button.enabled = YES;
			self.create_user_cancel_button.enabled = YES;
		}
		else if([[json_dict valueForKey:@"resp"] isEqualToString:@"usernametaken"])	{
			//username already taken, pick another
			self.error_message_create.text = @"Username already taken";
			self.aiv_create.hidden = YES;
			
			self.create_user_ok_button.enabled = YES;
			self.create_user_cancel_button.enabled = YES;
		}
		else if([[json_dict valueForKey:@"resp"] isEqualToString:@"badusername"] || [[json_dict valueForKey:@"resp"] isEqualToString:@"badpassword"])	{
			//uh, something else was returned, just ignore it/show error message
			self.error_message_create.text = [json_dict valueForKey:@"reason"];
			self.aiv_create.hidden = YES;
			self.create_user_ok_button.enabled = YES;
			self.create_user_cancel_button.enabled = YES;
		}
		else {
			//other custom error.  maybe user's length was too long.
			self.error_message_create.text = [json_dict valueForKey:@"resp"];
			self.aiv_create.hidden = YES;
			self.create_user_ok_button.enabled = YES;
			self.create_user_cancel_button.enabled = YES;
		}
		
		[self.new_username resignFirstResponder];
		[self.new_password1 resignFirstResponder];
		[self.new_password2 resignFirstResponder];
		[self.new_email resignFirstResponder];
	}
}

/*
 create user button was pressed.
 */
- (IBAction)create_user_click:(id)sender	{
	self.flag = @"2";

	[self.view addSubview:self.create_user_view];
	
	self.create_user_ok_button.enabled = YES;
	self.create_user_cancel_button.enabled = YES;
	self.error_message_create.text = @"";
	self.aiv_create.hidden = YES;
}

/*
 user wants to cancel the user_create
 */
- (IBAction)create_user_cancel_click:(id)sender	{
	self.flag = @"1";

	[self.create_user_view removeFromSuperview];
}

/*
 verify some inputs, then send off a request if all's good
 */
- (IBAction)create_user_ok_click:(id)sender	{
	NSString *user_valid = [self.new_username.text stringByMatching:@"^[a-zA-Z0-9_]*$"];
	
	if (![self.new_username.text isEqualToString:@""] && ![self.new_password1.text isEqualToString:@""] && ![self.new_password2.text isEqualToString:@""] && ![self.new_email.text isEqualToString:@""]) {
		if (user_valid != nil) {
			if ([self.new_password1.text isEqualToString:self.new_password2.text]) {
				self.create_user_ok_button.enabled = NO;
				self.create_user_cancel_button.enabled = NO;
			
				self.aiv_create.hidden = NO;
				self.error_message_create.text = @"";
			
				[self user_create_attempt];
			}
			else {
				self.error_message_create.text = @"Passwords did not match, make sure they're the same";
				self.create_user_ok_button.enabled = YES;
				self.create_user_cancel_button.enabled = YES;					
			}
		}
		else {
			self.error_message_create.text = @"Username can only contain\nletters, numbers\n and/or underscores";
			self.create_user_ok_button.enabled = YES;
			self.create_user_cancel_button.enabled = YES;
		}
	}
	else {
		self.error_message_create.text = @"Username, password or email is blank";
		self.create_user_ok_button.enabled = YES;
		self.create_user_cancel_button.enabled = YES;
	}
	
	[self.new_username resignFirstResponder];
	[self.new_password1 resignFirstResponder];
	[self.new_password2 resignFirstResponder];
	[self.new_email resignFirstResponder];
}











// Call this method somewhere in your view controller setup code.
- (void)registerForKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(keyboardWasShown:)
												 name:UIKeyboardDidShowNotification object:nil];
	
    [[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(keyboardWasHidden:)
												 name:UIKeyboardDidHideNotification object:nil];
	
	self.create_user_scrollview.contentSize = CGSizeMake(320, 480);
	self.login_scrollview.contentSize = CGSizeMake(320, 480);
}

// Called when the UIKeyboardDidShowNotification is sent.
- (void)keyboardWasShown:(NSNotification*)aNotification
{
    if (keyboardShown)
        return;
	
    NSDictionary* info = [aNotification userInfo];
	
    // Get the size of the keyboard.
    NSValue* aValue = [info objectForKey:UIKeyboardFrameBeginUserInfoKey];
    CGSize keyboardSize = [aValue CGRectValue].size;
	
    // Resize the scroll view (which is the root view of the window)
    CGRect viewFrame = self.activeScrollView.frame;
    viewFrame.size.height -= keyboardSize.height;
    self.activeScrollView.frame = viewFrame;
	
    // Scroll the active text field into view.
    CGRect textFieldRect = [self.activeField frame];

    [self.activeScrollView scrollRectToVisible:textFieldRect animated:YES];
	
    keyboardShown = YES;
}


// Called when the UIKeyboardDidHideNotification is sent
- (void)keyboardWasHidden:(NSNotification*)aNotification
{
    NSDictionary* info = [aNotification userInfo];
	
    // Get the size of the keyboard.
    NSValue* aValue = [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGSize keyboardSize = [aValue CGRectValue].size;
	
    // Reset the height of the scroll view to its original value
    CGRect viewFrame = [self.create_user_scrollview frame];
    viewFrame.size.height += keyboardSize.height;
    self.activeScrollView.frame = viewFrame;
	
    keyboardShown = NO;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.activeField = textField;
	
	if (textField == self.username || textField == self.password) {
		self.activeScrollView = self.login_scrollview;
	}
	else {
		self.activeScrollView = self.create_user_scrollview;
	}
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    self.activeField = nil;
}
















/*
 login button was pressed
 */
- (IBAction)login_click:(id)sender	{
	NSString *user_valid = [self.username.text stringByMatching:@"^[a-zA-Z0-9_]*$"];

	if ([self.login.currentTitle isEqualToString:@"Login"]) {
		if (![self.username.text isEqualToString:@""] && ![self.password.text isEqualToString:@""]) {
			if (user_valid != nil) {
				self.create_user_button.enabled = NO;
				
				[self.login setTitle:@"Cancel" forState:UIControlStateNormal];
			
				self.aiv.hidden = NO;
				self.error_message.text = @"";
			
				[self login_attempt];			
			}
			else {
				self.error_message.text = @"Username can only contain\nletters, numbers and/or underscores";
			}

		}
		else {
			self.error_message.text = @"Username or password is blank";
		}
	
		[self.username resignFirstResponder];
		[self.password resignFirstResponder];
	}
	else {
		[self.login setTitle:@"Login" forState:UIControlStateNormal];
		self.create_user_button.enabled = YES;
		self.aiv.hidden = YES;
	}

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField	{
	if (textField == self.username) {
		[self.password becomeFirstResponder];
	}
	
	if (textField == self.password) {
		[textField resignFirstResponder];
	}
	
	if (textField == self.new_username) {
		[self.new_password1 becomeFirstResponder];
	}
	
	if (textField == self.new_password1) {
		[self.new_password2 becomeFirstResponder];
	}

	if (textField == self.new_password2) {
		[self.new_email becomeFirstResponder];
	}
	
	if (textField == self.new_email) {
		[textField resignFirstResponder];
	}
	
	return YES;
}

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
	[activeScrollView release];
	[login_scrollview release];
	[create_user_scrollview release];
	[call1 release];
	[aiv release];
	[fbook release];
	[aiv_create release];
	[login release];
	[create_user_button release];
	[create_user_ok_button release];
	[username release];
	[password release];
	[new_username release];
	[new_password1 release];
	[new_password2 release];
	[new_email release];
	[activeField release];
	[error_message release];
	[error_message_create release];
	[create_user_scrollview release];
	[login_scrollview release];
	[create_user_cancel_button release];
	[flag release];
	[_permissions release];
	[dialog_background release];
	[usercreate_background release];

	[instanceMainScreenView release];
	[create_user_view release];
	
    [super dealloc];
}


@end
