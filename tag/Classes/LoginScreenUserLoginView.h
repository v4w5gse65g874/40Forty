//
//  LoginScreenUserLoginView.h
//  tag
//
//  Created by ken rufe on 9/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginScreenUserLoginDelegate.h"
#import "FBConnect.h"

@class ServerCall;
@class MainScreenView;

@interface LoginScreenUserLoginView : UIViewController <UITextFieldDelegate, LoginScreenUserLoginDelegate, FBSessionDelegate> {
	Facebook *fbook;
	NSArray *_permissions;
	
	IBOutlet UIButton *login;
	IBOutlet UIButton *create_user_button;
	IBOutlet UIButton *create_user_cancel_button;
	IBOutlet UIButton *create_user_ok_button;
	IBOutlet UITextField *username;
	IBOutlet UITextField *password;
	IBOutlet UITextField *new_username;
	IBOutlet UITextField *new_password1;
	IBOutlet UITextField *new_password2;
	IBOutlet UITextField *new_email;
	IBOutlet UILabel *error_message;
	IBOutlet UILabel *error_message_create;
	IBOutlet UIView *create_user_view;
	IBOutlet UIScrollView *create_user_scrollview;
	IBOutlet UIScrollView *login_scrollview;
	IBOutlet UIImageView *dialog_background;
	IBOutlet UIImageView *usercreate_background;
	
	UIActivityIndicatorView *aiv;
	UIActivityIndicatorView *aiv_create;
	
	ServerCall *call1;
	MainScreenView *instanceMainScreenView;
	
	UITextField *activeField;
	UIScrollView *activeScrollView;
	bool keyboardShown;
	NSString *flag;
}

- (IBAction)login_click:(id)sender;
- (IBAction)create_user_click:(id)sender;
- (IBAction)create_user_cancel_click:(id)sender;
- (IBAction)create_user_ok_click:(id)sender;
- (void)login_attempt;

- (void)registerForKeyboardNotifications;

@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *aiv;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *aiv_create;
@property (nonatomic, retain) IBOutlet UIButton *login;
@property (nonatomic, retain) IBOutlet UIButton *create_user_button;
@property (nonatomic, retain) IBOutlet UIButton *create_user_ok_button;
@property (nonatomic, retain) IBOutlet UITextField *username;
@property (nonatomic, retain) IBOutlet UITextField *password;
@property (nonatomic, retain) IBOutlet UITextField *new_username;
@property (nonatomic, retain) IBOutlet UITextField *new_password1;
@property (nonatomic, retain) IBOutlet UITextField *new_password2;
@property (nonatomic, retain) IBOutlet UITextField *new_email;
@property (nonatomic, retain) IBOutlet UITextField *activeField;
@property (nonatomic, retain) IBOutlet UILabel *error_message;
@property (nonatomic, retain) IBOutlet UILabel *error_message_create;
@property (nonatomic, retain) ServerCall *call1;
@property (nonatomic, retain) MainScreenView *instanceMainScreenView;
@property (nonatomic, retain) IBOutlet UIView *create_user_view;
@property (nonatomic, retain) IBOutlet UIScrollView *create_user_scrollview;
@property (nonatomic, retain) IBOutlet UIScrollView *login_scrollview;
@property (nonatomic, retain) UIScrollView *activeScrollView;
@property (nonatomic, retain) IBOutlet UIButton *create_user_cancel_button;
@property (nonatomic, retain) NSString *flag;
@property (nonatomic, retain) Facebook *fbook;
@property (nonatomic, retain) NSArray *_permissions;
@property (nonatomic, retain) UIImageView *dialog_background;
@property (nonatomic, retain) UIImageView *usercreate_background;

@end