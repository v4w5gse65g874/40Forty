//
//  ServerCall.h
//  tag
//
//  Created by ken rufe on 7/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationTools.h"
#import "LoginScreenUserLoginDelegate.h"
#import "GameViewDelegate.h"

@interface ServerCall : NSObject {
	id <LoginScreenUserLoginDelegate> user_login_delegate;
	id <GameViewDelegate> gameview_delegate;
	
	NSMutableString *ser_responding;
	NSString *server_response;
	
	//global string for the location of the api domain
	NSString *api_domain;
}

- (void)sendLocationAPI:(LocationTools *)location_object action:(NSString *)action;
- (void)sendPendingPoolAPI:(LocationTools *)location_object command:(NSString *)command;
- (void)sendQuitGameAPI:(LocationTools *)location_object;
- (void)try_to_log_in:(NSString *)username password:(NSString *)password;
- (void)try_to_create_user:(NSString *)username password:(NSString *)password email:(NSString *)email;
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;

@property (nonatomic, retain) NSString *server_response;
@property (nonatomic, retain) NSString *api_domain;
@property (nonatomic, retain) NSMutableString *ser_responding;

@property (nonatomic, assign) id <LoginScreenUserLoginDelegate> user_login_delegate;
@property (nonatomic, assign) id <GameViewDelegate> gameview_delegate;

@end
