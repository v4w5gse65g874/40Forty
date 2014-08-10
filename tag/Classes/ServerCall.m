//
//  ServerCall.m
//  tag
//
//  Created by ken rufe on 7/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.

#import "ServerCall.h"

@implementation ServerCall

@synthesize server_response, api_domain, ser_responding, user_login_delegate, gameview_delegate;

//lets make our response "" instead of NULL
- (id)init	{
	self = [super init];
	
	server_response = [[NSString alloc] initWithString:@""];
	ser_responding = [[NSMutableString alloc] initWithString:@""];
	api_domain = @"https://gator1251.hostgator.com/~segstsh5/40forty_api/";
	
	return self;
}

/*
 user is trying to log in
 */
- (void)try_to_log_in:(NSString *)username password:(NSString *)password	{
	NSMutableString *httpBodyString;
	NSURL *url;
	NSString *urlString;
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
		
	httpBodyString=[[NSMutableString alloc] init];
			
	NSString *encodedUsername = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)username, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 );
	NSString *encodedPassword = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)password, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 );
	
	urlString=[[NSString alloc] initWithFormat:@"%@login.php?usernam3z=%@&passw0rdt=%@&game_type=%@", self.api_domain, encodedUsername, encodedPassword, [user_prefs stringForKey:@"game_type"]];

	[encodedUsername release];
	[encodedPassword release];

	url=[[NSURL alloc] initWithString:urlString];
	[urlString release];
	
	NSMutableURLRequest *urlRequest=[NSMutableURLRequest requestWithURL:url];
	[url release];
	
	[urlRequest setHTTPMethod:@"POST"];
	[urlRequest setHTTPBody:[httpBodyString dataUsingEncoding:NSISOLatin1StringEncoding]];
	[httpBodyString release];
	
	NSURLConnection *connectionResponse = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
	
	[connectionResponse release];
}

/*
 user is trying to create a new user
 */
- (void)try_to_create_user:(NSString *)username password:(NSString *)password email:(NSString *)email	{
	NSMutableString *httpBodyString;
	NSURL *url;
	NSString *urlString;
	
	httpBodyString=[[NSMutableString alloc] init];
	
	NSString *encodedUsername = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)username, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 );
	NSString *encodedPassword = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)password, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 );
	NSString *encodedEmail = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)email, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 );
	
	urlString=[[NSString alloc] initWithFormat:@"%@create_user.php?urnam3z=%@&pass3w0rdt=%@&eyyimail=%@", self.api_domain, encodedUsername, encodedPassword, encodedEmail];
	
	[encodedUsername release];
	[encodedPassword release];
	[encodedEmail release];
	
	url=[[NSURL alloc] initWithString:urlString];
	[urlString release];
	
	NSMutableURLRequest *urlRequest=[NSMutableURLRequest requestWithURL:url];
	[url release];
	
	[urlRequest setHTTPMethod:@"POST"];
	[urlRequest setHTTPBody:[httpBodyString dataUsingEncoding:NSISOLatin1StringEncoding]];
	[httpBodyString release];
	
	NSURLConnection *connectionResponse = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
	
	[connectionResponse release];
}

/*
 send request to my webserver to place myself into the pending_pool
 */
- (void)sendPendingPoolAPI:(LocationTools *)location_object command:(NSString *)command	{
	NSMutableString *httpBodyString;
	NSURL *url;
	NSString *urlString;
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	httpBodyString=[[NSMutableString alloc] init];
	
	if (command == @"add") {
		NSString *game_radius = [[NSString alloc] initWithFormat:@"%i", [[user_prefs stringForKey:@"game_radius"] intValue]];

		NSString *timestamp = [NSString stringWithFormat:@"%d", (long)[[NSDate date] timeIntervalSince1970]];
		urlString=[[NSString alloc] initWithFormat:@"%@pool.php?username=%@&action=%@&lat=%f&lng=%f&game_type=%@&timestamp=%@&radius=%@&game_difficulty=%@", self.api_domain, [user_prefs stringForKey:@"username"], command, [location_object my_latitude], [location_object my_longitude], [user_prefs stringForKey:@"game_type"], timestamp, game_radius, [user_prefs stringForKey:@"game_difficulty"]];

		[game_radius release];
	}
	else if (command == @"ping")	{
		urlString=[[NSString alloc] initWithFormat:@"%@pool.php?username=%@&action=%@", self.api_domain, [user_prefs stringForKey:@"username"], command];
	}
	else if(command == @"remove")	{
		//user cancelled/timed out attempts and should be removed from the pool
		urlString=[[NSString alloc] initWithFormat:@"%@pool.php?username=%@&action=%@", self.api_domain, [user_prefs stringForKey:@"username"], command];		
	}
	else {
		[httpBodyString release];
		return;
	}
	
	url=[[NSURL alloc] initWithString:urlString];
	[urlString release];
	
	NSMutableURLRequest *urlRequest=[NSMutableURLRequest requestWithURL:url];
	[url release];
	
	[urlRequest setHTTPMethod:@"POST"];
	[urlRequest setHTTPBody:[httpBodyString dataUsingEncoding:NSISOLatin1StringEncoding]];
	[httpBodyString release];

	NSURLConnection *connectionResponse = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
	
	[connectionResponse release];
}

/*
 send request to my webserver to quit the game, returns 1 on success
 */
- (void)sendQuitGameAPI:(LocationTools *)location_object	{
	NSMutableString *httpBodyString;
	NSURL *url;
	NSString *urlString;
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	httpBodyString=[[NSMutableString alloc] init];
	
	urlString=[[NSString alloc] initWithFormat:@"%@quit_game.php?username=%@", self.api_domain, [user_prefs stringForKey:@"username"]];
	
	url=[[NSURL alloc] initWithString:urlString];
	[urlString release];
	
	NSMutableURLRequest *urlRequest=[NSMutableURLRequest requestWithURL:url];
	[url release];
	
	[urlRequest setHTTPMethod:@"POST"];
	[urlRequest setHTTPBody:[httpBodyString dataUsingEncoding:NSISOLatin1StringEncoding]];
	[httpBodyString release];

	NSURLConnection *connectionResponse = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
	
	[connectionResponse release];
}

/*
 send request to my webserver to set lat/lng and the response
 will be if we're in range
 */
- (void)sendLocationAPI:(LocationTools *)location_object action:(NSString *)action	{
	NSMutableString *httpBodyString;
	NSURL *url;
	NSString *urlString;
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	httpBodyString=[[NSMutableString alloc] init];
	
	if ([action isEqualToString:@"main_game"]) {
		urlString=[[NSString alloc] initWithFormat:@"%@send_location.php?username=%@&lat=%f&lng=%f&action=%@&round_num=%@", self.api_domain, [user_prefs stringForKey:@"username"], [location_object my_latitude], [location_object my_longitude], action, [user_prefs stringForKey:@"round_num"]];
	}
	else	{	
		urlString=[[NSString alloc] initWithFormat:@"%@send_location.php?username=%@&lat=%f&lng=%f&action=%@", self.api_domain, [user_prefs stringForKey:@"username"], [location_object my_latitude], [location_object my_longitude], action];
	}
	
	url=[[NSURL alloc] initWithString:urlString];
	[urlString release];
	
	NSMutableURLRequest *urlRequest=[NSMutableURLRequest requestWithURL:url];
	[url release];
	
	[urlRequest setHTTPMethod:@"POST"];
	[urlRequest setHTTPBody:[httpBodyString dataUsingEncoding:NSISOLatin1StringEncoding]];
	[httpBodyString release];

	NSURLConnection *connectionResponse = [[NSURLConnection alloc] initWithRequest:urlRequest delegate:self];
	
	[connectionResponse release];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	
	NSMutableString *test = self.ser_responding;
	[test appendString:responseString];
	self.ser_responding = test;
		
	[responseString release];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error	{
	self.server_response = @"error";
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection	{
	//setter for outside classes
	self.server_response = self.ser_responding;
	self.ser_responding = [NSMutableString stringWithString:@""];
	
	//call our delegates...not sure if this will work past the view we need???
	[self.user_login_delegate user_login_response];
	[self.gameview_delegate gameview_server_responded];
}

- (void)dealloc {
	[server_response release];
	[ser_responding release];
	[api_domain release];
	
    [super dealloc];
}

@end