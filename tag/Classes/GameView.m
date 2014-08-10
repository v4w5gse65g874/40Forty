//
//  GameView.m
//  tag
//
//  Created by ken rufe on 7/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "GameView.h"
#import "SBJsonParser.h"
#import "ServerCall.h"
#import "LocationTools.h"
#import "AnnotationListObject.h"
#import "FBConnect.h"
#import "MobclixAds.h"
#import <QuartzCore/QuartzCore.h>

@implementation GameView;

@synthesize server_lock, coordLatitudeDelta, coordLongitudeDelta, game_find_attempt, game_id, fbook_json_user, kAppId, fbook_user, fbook_user_name, fbook, gameMap, gameFlag, serverCall, locationTools, loadingGame, find_game_ping_fail_view, round_end_reason_label, cooldown_time_label, round_over_label, loadingGameMessage, cooldown_view, round_time_left_label, round_number_label, player_list;
@synthesize it_state, map_container, game_view, confirm_exit, quit, quit_confirm, quit_cancel, attempt_count_label;
@synthesize round_time_start, game_status, round_status, time_left_in_cooldown, round_end_reason, round_num, how_many_in_my_zone, whose_in_my_zone, i_entered_tag_zone, time_entered_zone, server_time, round_time_length;
@synthesize old_round_time_start, old_game_status, old_round_status, old_time_left_in_cooldown, old_round_end_reason, old_round_num, old_how_many_in_my_zone, old_whose_in_my_zone, old_i_entered_tag_zone, old_time_entered_zone, old_server_time, old_round_time_length;
@synthesize newTimer, outlast_tag_flag, old_it_state, tagged_username, dont_post_fbook, adView, fail_background, initialize_background, statisticsButtonClose, statisticsView, statisticsLabel, playerSelectedCallout, mainscreen_object, aiv, opts_button, opts_view, autosize_map, show_circle, show_line, map_type_switcher, opts_done_button;


 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil fabook:fabook {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
		self.fbook = fabook;
		self.kAppId = @"165680910129548";
		
		//get the user info for publishing
		[self.fbook requestWithGraphPath:@"me" andDelegate:self];
    }
    return self;
}

/*
 Facebook posting to the user's wall function.  getting the user's username should have happened already.
 */
- (void)post_to_fbook_wall_block:(NSString *)message picture:(NSString *)picture link:(NSString *)link name:(NSString *)name caption:(NSString *)caption description:(NSString *)description	{
	NSMutableDictionary *params;
	
	if ([message isEqualToString:@""]) {
		params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
				  self.kAppId, @"api_key", 
				  picture, @"picture",
				  link, @"link",
				  name, @"name",
				  caption, @"caption",
				  description, @"description",
				  nil];
	}
	else if ([message isEqualToString:@"i_tagged_them"])	{
		NSString *mess = [[NSString alloc] initWithFormat:@"I just tagged '%@', won the round and gained 15 points!", self.tagged_username];

		params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
				  self.kAppId, @"api_key", 
				  @"http://www.40forty.com/icon.jpg", @"picture",
				  @"http://www.40forty.com", @"link",
				  mess, @"description",
				  nil];
		
		[mess release];
	}
	else if ([message isEqualToString:@"they_tagged_me"])	{
		NSString *mess = [[NSString alloc] initWithFormat:@"I was just tagged by %@, losing both the round and 10 points!", self.tagged_username];

		params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
				  self.kAppId, @"api_key", 
				  @"http://www.40forty.com/icon.jpg", @"picture",
				  @"http://www.40forty.com", @"link",
				  mess, @"description",
				  nil];
		
		[mess release];
	}
	else if ([message isEqualToString:@"joined"])	{
		params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
				  kAppId, @"api_key", 
				  @"http://www.40forty.com/icon.jpg", @"picture",
				  @"http://www.40forty.com", @"link",
				  @"I just joined a 40Forty game!", @"description",
				  nil];
	}
	else if ([message isEqualToString:@"outlasted_time"])	{
		params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
				  self.kAppId, @"api_key", 
				  @"http://www.40forty.com/icon.jpg", @"picture",
				  @"http://www.40forty.com", @"link",
				  @"I was it and noone tagged me for the entire round!  I just gained 30 points!", @"description",
				  nil];
	}
	else {
		return;
	}

	
	[self.fbook requestWithGraphPath:@"me/feed" andParams:params andHttpMethod:@"POST" andDelegate:self];

	/*   template....
	NSMutableDictionary * params = [NSMutableDictionary dictionaryWithObjectsAndKeys:
									kAppId, @"api_key", 
									@"OH SNAP UPDATE", @"message",
									@"http://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Small-city-symbol.svg/348px-Small-city-symbol.svg.png", @"picture",
									@"http://www.google.com", @"link",
									@"The BLACK DOT OF VOIDNESS", @"name",
									@"Some crazy text", @"caption",
									@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", @"description",
									nil];
	*/
}

/*
 Facebook delegate method
 */
- (void)request:(FBRequest*)request didLoad:(id)result {
	if ([request.httpMethod isEqualToString:@"GET"]) {
		self.fbook_json_user = result;
		self.fbook_user = [self.fbook_json_user objectForKey:@"id"];
		self.fbook_user_name = [self.fbook_json_user objectForKey:@"name"];
	}
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.server_lock = 0;
	
    [super viewDidLoad];
		
	[self.adView resumeAdAutoRefresh];

	[initialize_background.layer setMasksToBounds:YES];
	initialize_background.layer.cornerRadius = 20;
	[fail_background.layer setMasksToBounds:YES];
	fail_background.layer.cornerRadius = 20;
	
	//make the spinning overlay show up
	[self.find_game_ping_fail_view removeFromSuperview];
	[self.view addSubview:loadingGame];
	
	[self setGame_find_attempt:0];
	attempt_count_label.text = @"";
	[self setGameFlag:@"need"];

	ServerCall *call2 = [[ServerCall alloc] init];
	call2.gameview_delegate = self;
	self.serverCall = call2;
	[call2 release];
	
	LocationTools *location_object1 = [[LocationTools alloc] init];
	self.locationTools = location_object1;
	[location_object1 release];

	self.player_list = [[NSMutableArray alloc] initWithObjects:nil];
	
	quit.enabled = YES;
	opts_button.enabled = YES;

	round_number_label.text = @"";
	
	//initiate old vars
	self.old_round_num = @"";
	
	UIApplication *app = [UIApplication sharedApplication];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillTerminate:) name:UIApplicationWillTerminateNotification object:app];

	self.newTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(gameFlow) userInfo:nil repeats:YES];
	
	self.outlast_tag_flag = @"0";
	
	self.quit_confirm.enabled = YES;
	self.quit_cancel.enabled = YES;
}

/*
 this function sets the mainscreen object for updating the stat labels
 */
- (void)set_mainscreen_object:(MainScreenView *)m_object	{
	self.mainscreen_object = m_object;
}

/*
 this function cancels the user's attempt at joining a game...its locked up on me once while trying to join.
 */
- (IBAction)find_game_cancel_button:(id)sender	{
	if ([self.newTimer isValid]) {
		[self.newTimer invalidate];
		self.newTimer = nil;
	}
	
	[self.serverCall sendPendingPoolAPI:self.locationTools command:@"remove"];

	self.gameFlag = @"need";

	[self.view removeFromSuperview];
}

//my app is about to close oh noes!!
- (void)applicationWillTerminate: (NSNotification *)notification 
{
	//do something???
}

//this function simply increments the game find attempt var by 1
- (void)incrementGame_find_attempt	{
	game_find_attempt++;
}

- (IBAction)statisticsButtonClosePressed:(id)sender	{
	[statisticsView removeFromSuperview];
}

- (void)appendGameLoadingMessage:(NSString *)new_message newline:(BOOL)nl	{
	[new_message retain];
	
	if (nl) {
		NSString *nm = [[NSString alloc] initWithFormat:@"%@\n%@", loadingGameMessage.text, new_message];
		loadingGameMessage.text = nm;
		[nm release];
	}
	else {
		NSString *nm = [[NSString alloc] initWithFormat:@"%@%@", loadingGameMessage.text, new_message];
		loadingGameMessage.text = nm;
		[nm release];
	}
	
	[new_message release];
}

/*
 =========================================
 =========================================
 game timer was fired, lets see what to do
 =========================================
 =========================================
 */
- (void)gameFlow	{
	//do we need the user's location?
	if ([self.gameFlag isEqualToString:@"need"]) {
		[self.locationTools getLocation];
		self.gameFlag = @"getting";
		[self appendGameLoadingMessage:@"Acquiring location..." newline:YES];
	}
	
	//have we found the user's location?
	if ([self.gameFlag isEqualToString:@"getting"]) {
		if ([self.locationTools my_latitude] != 0.000000) {
			if ([self.locationTools my_longitude] != 0.000000) {
				//location found, enter them into the player pending pool
				if (self.server_lock == 0) {
					self.server_lock = 1;
					[self.serverCall sendPendingPoolAPI:self.locationTools command:@"add"];
				}
				
				self.gameFlag = @"adding_to_pool";
				[self appendGameLoadingMessage:@"acquired" newline:NO];
				
				//disable the timer
				[self.newTimer invalidate];
				self.newTimer = nil;
			}
		}
		else {
			//still waiting for location...
		}
	}
	
	//calls the main game API, delegate handles the return info from our server
	if ([self.gameFlag isEqualToString:@"main_game_loop"]) {
		if (self.server_lock == 0) {
			self.server_lock = 1;
			[self.serverCall sendLocationAPI:self.locationTools action:@"main_game"];
		}
	}
	
	//handle 1 sec potential timeouts
	if ([self.gameFlag isEqualToString:@"pinging"])	{
		if (self.server_lock == 0) {
			self.server_lock = 1;
			[self.serverCall sendPendingPoolAPI:self.locationTools command:@"ping"];
		}
		
		[self.newTimer invalidate];
		self.newTimer = nil;
	}
}
/*
 =========================================
 =========================================
 =========================================
 =========================================
*/ 



/*
 this function scrolls the region into the decided view
 */
- (void)scrollRegion	{
	CLLocationCoordinate2D coord = {latitude: [self.locationTools my_latitude], longitude: [self.locationTools my_longitude]};
	MKCoordinateSpan span = {latitudeDelta: self.coordLatitudeDelta, longitudeDelta: self.coordLongitudeDelta};
	MKCoordinateRegion region = {coord, span};
	[self.gameMap setRegion:region animated:YES];
}

/*
 this function updates all the player's annotations on the map
 */
- (void)update_players_on_map	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	NSString *game_type = [user_prefs stringForKey:@"game_type"];
	
	//if we're in cooldown, remove all annotations and overlays except our userLocation
	if ([self.round_status isEqualToString:@"cooldown"])	{
		for (int i = 0; i < [[self.gameMap annotations] count]; i++)	{
			if ([[[[self.gameMap annotations] objectAtIndex:i] title] isEqualToString:@"Current Location"]) {
				[[[self.gameMap annotations] objectAtIndex:i] setSubtitle:@""];
			}
			else	{
				[self.gameMap removeAnnotation:[[self.gameMap annotations] objectAtIndex:i]];
			}
		}
		
		NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
		
		for (int x=0; x<[ov count]; x++) {
			[self.gameMap removeOverlay:[ov objectAtIndex:x]];
		}
		
		[ov release];
		
		return;
	}
	
	//if self.player_list is empty, return
	if ([self.player_list count] == 0 || self.player_list == nil) {
		return;
	}
	
	//remove each pin that is not found in the json_dict (players that have left/been removed)
	for (int i = 0; i < [[self.gameMap annotations] count]; i++)	{
		int flag = 0;
		
		if ([[self.gameMap annotations] objectAtIndex:i] == [self.gameMap userLocation]) {
		}
		else	{
			for (int j = 0; j < [self.player_list count]; j++)	{
				if ([[[[self.gameMap annotations] objectAtIndex:i] title] isEqualToString:[[self.player_list objectAtIndex:j] objectAtIndex:0]])	{
					flag = 1;
				}
			}
		
			if (flag != 1) {
				//remove it
				[self.gameMap removeAnnotation:[[self.gameMap annotations] objectAtIndex:i]];
			}
		}
	}
	
	//now move the pins to the new coord using moveAnnotation
	for (int i = 0; i < [[self.gameMap annotations] count]; i++)	{
		for (int j = 0; j < [self.player_list count]; j++)	{
			//title
			if ([[[[self.gameMap annotations] objectAtIndex:i] title] isEqualToString:@"Current Location"]) {
			}
			else if ([[[[self.gameMap annotations] objectAtIndex:i] title] isEqualToString:[[self.player_list objectAtIndex:j] objectAtIndex:0]])	{
				CLLocationCoordinate2D tempCoordinate;
				
				tempCoordinate.latitude = [[[self.player_list objectAtIndex:j] objectAtIndex:1] floatValue]; // set latitude to required value
				tempCoordinate.longitude = [[[self.player_list objectAtIndex:j] objectAtIndex:2] floatValue]; // set longitude to required value

				[[[self.gameMap annotations] objectAtIndex:i] setCoordinate:tempCoordinate];
			}
		}
	}
	
	//update the subtitle (for Current Location's)
	if ([self.time_left_in_cooldown isEqualToString:@""]) {
		for (int i = 0; i < [[self.gameMap annotations] count]; i++)	{
			if ([[[[self.gameMap annotations] objectAtIndex:i] title] isEqualToString:@"Current Location"]) {
				if ([game_type isEqualToString:@"free_for_all"]) {
					if ([[[self.gameMap annotations] objectAtIndex:i] subtitle] == nil || [[[[self.gameMap annotations] objectAtIndex:i] subtitle] isEqualToString:@""]) {
						[[[self.gameMap annotations] objectAtIndex:i] willChangeValueForKey:@"subtitle"];
						
						if ([[self it_state] isEqualToString:@"0"]) {
							[[[self.gameMap annotations] objectAtIndex:i] setSubtitle: @"You are not it, tag those that are to win!"];
						}
						if ([[self it_state] isEqualToString:@"1"]) {
							[[[self.gameMap annotations] objectAtIndex:i] setSubtitle: @"You are it, avoid those that aren't to win!"];
						}
				
						[[[self.gameMap annotations] objectAtIndex:i] didChangeValueForKey:@"subtitle"];
					}
				}
			}
		}
	}
	
	//if there's new players to the game add them
	NSMutableArray *annotationList = [[NSMutableArray alloc] init];

	for (int j = 0; j < [self.player_list count]; j++)	{
		int flag = 0;
		
		for (int i = 0; i < [[self.gameMap annotations] count]; i++)	{
			if ([[[self.player_list objectAtIndex:j] objectAtIndex:0] isEqualToString:[[[self.gameMap annotations] objectAtIndex:i] title]])	{
				flag = 1;
				break;
			}
		}
		
		if (flag == 0) {
			//add the annotation to the map
			if ([game_type isEqualToString:@"free_for_all"]) {
				//if i'm "IT", show everyone except myself
				if ([self.it_state isEqualToString:@"1"]) {
					if ([[[self.player_list objectAtIndex:j] objectAtIndex:0] isEqualToString:[user_prefs stringForKey:@"username"]]) {
						//do nothing
					}
					else	{
						NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:j]];
					
						AnnotationListObject *newAnnotation = [AnnotationListObject new];
						CLLocationCoordinate2D tempCoordinate;
					
						tempCoordinate.latitude = [[t objectAtIndex:1] floatValue]; // set latitude to required value
						tempCoordinate.longitude = [[t objectAtIndex:2] floatValue]; // set longitude to required value
						[newAnnotation setCoordinate: tempCoordinate];
						[newAnnotation setTitle: [t objectAtIndex:0]];
						[newAnnotation setSubtitle: [self do_subtitle_formatting:j]];
						newAnnotation.image_name = @"pin-not-it-player.png";
						[annotationList addObject: newAnnotation];
						[newAnnotation release];
						[t release];
					}
				}
				else if([self.it_state isEqualToString:@"0"])	{
					NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:j]];

					//just show it players
					if ([[t objectAtIndex:3] isEqualToString:@"1"]) {
						AnnotationListObject *newAnnotation = [AnnotationListObject new];
						CLLocationCoordinate2D tempCoordinate;
						
						tempCoordinate.latitude = [[t objectAtIndex:1] floatValue]; // set latitude to required value
						tempCoordinate.longitude = [[t objectAtIndex:2] floatValue]; // set longitude to required value
						[newAnnotation setCoordinate: tempCoordinate];
						[newAnnotation setTitle: [t objectAtIndex:0]];
						[newAnnotation setSubtitle: [self do_subtitle_formatting:j]];
						newAnnotation.image_name = @"pin-it-player.png";
						[annotationList addObject: newAnnotation];
						[newAnnotation release];
					}
					
					[t release];
				}
			}
		}
	}
	
	[self.gameMap addAnnotations: annotationList];
	[annotationList release];
	
	//ok lets add or remove circle(s)
	if ([[user_prefs stringForKey:@"show_circle"] isEqualToString:@"1"]) {
		[self update_tagging_circles];
	}
	else if ([[user_prefs stringForKey:@"show_circle"] isEqualToString:@"0"]) {
		NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
		NSMutableArray *rem = [[NSMutableArray alloc] init];
		
		for (int x=0; x<[ov count]; x++) {
			if ([[ov objectAtIndex:x] isKindOfClass:[MKCircle class]]) {
				[rem addObject:[NSNumber numberWithInt:x]];
			}
		}
		
		for (int x=0; x<[rem count]; x++) {
			[self.gameMap removeOverlay:[ov objectAtIndex:[[rem objectAtIndex:x] intValue]]];
		}
		
		[rem release];
		[ov release];		
	}
	
	//lets draw the polyline(s)
	if ([[user_prefs stringForKey:@"show_line"] isEqualToString:@"1"]) {
		[self update_polylines];
	}
	else if ([[user_prefs stringForKey:@"show_line"] isEqualToString:@"0"]) {
		NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
		NSMutableArray *rem = [[NSMutableArray alloc] init];

		for (int x=0; x<[ov count]; x++) {
			if ([[ov objectAtIndex:x] isKindOfClass:[MKPolyline class]]) {
				[rem addObject:[NSNumber numberWithInt:x]];
			}
		}
		
		for (int x=0; x<[rem count]; x++) {
			[self.gameMap removeOverlay:[ov objectAtIndex:[[rem objectAtIndex:x] intValue]]];
		}
		
		[rem release];
		[ov release];
	}
}

/*
 adds and removes the polyline to the tagger/taggee
 */
- (void)update_polylines	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	
	
	//remove overlay that aren't there anymore (players might have moved)
	NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
	NSMutableArray *rem = [[NSMutableArray alloc] init];
	
	for (int y=0; y < [ov count]; y++) {
		if ([[ov objectAtIndex:y] isKindOfClass:[MKPolyline class]]) {
			int flag = 0;
			
			for (int z = 0; z < [self.player_list count]; z++) {
				NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:z]];
				
				CLLocationCoordinate2D tempCoordinate;
				CLLocationCoordinate2D my_coord;
				
				my_coord.latitude = [self.locationTools my_latitude];
				my_coord.longitude =  [self.locationTools my_longitude];	
				tempCoordinate.latitude = [[t objectAtIndex:1] floatValue];
				tempCoordinate.longitude = [[t objectAtIndex:2] floatValue]; 
				
				[t release];
				
				MKMapPoint my_point = MKMapPointForCoordinate(my_coord);
				MKMapPoint their_point = MKMapPointForCoordinate(tempCoordinate);
				MKMapPoint *p = [[ov objectAtIndex:y] points];
				
				//so, point[0] will always be mine and point[1] will always be their's.
				//to make things easier i'll just compare 0 and 1 respectively.
				//however if i ever change this to include more points i'm kind fucked but...hopefully
				//it won't come to that.
				if (p[0].x == my_point.x  && p[0].y == my_point.y)	{
					if (p[1].x == their_point.x && p[1].y == their_point.y) {
						//it was found and matches, don't remove it.  we're not it.
						if ([self.it_state isEqualToString:@"0"]) {
							flag = 1;
							break;							
						}
					}
				}
				
				CLLocationCoordinate2D temp2;
				temp2.latitude = [[user_prefs stringForKey:@"closest_lat"] floatValue];
				temp2.longitude = [[user_prefs stringForKey:@"closest_lng"] floatValue];
				MKMapPoint p2 = MKMapPointForCoordinate(temp2);
				
				//if i'm it, compare their points to see if it's the closest_lat and closest_lng, if it is don't remove it
				if ([self.it_state isEqualToString:@"1"])	{
					if (p[0].x == my_point.x && p[0].y == my_point.y)	{
						if (p[1].x == their_point.x && p[1].y == their_point.y)		{
							if (their_point.x == p2.x && their_point.y == p2.y) {
								flag = 1;
								break;
							}
						}
					}
				}
			}
			
			//remove the overlay since it wasn't found
			if (flag == 0) {
				[rem addObject:[NSNumber numberWithInt:y]];
			}
		}
	}
	
	for (int x=0; x<[rem count]; x++) {
		[self.gameMap removeOverlay:[ov objectAtIndex:[[rem objectAtIndex:x] intValue]]];
	}
	
	[ov release];
	[rem release];

	
	
	//add overlays now
	for (int j = 0; j < [self.player_list count]; j++)	{
		NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:j]];
		NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
			
		if ([[t objectAtIndex:3] isEqualToString:@"1"] || ([self.it_state isEqualToString:@"1"] && ([[t objectAtIndex:1] floatValue] == [[user_prefs stringForKey:@"closest_lat"] floatValue] && [[t objectAtIndex:2] floatValue] == [[user_prefs stringForKey:@"closest_lng"] floatValue]))) {
			CLLocationCoordinate2D tempCoordinate;
			CLLocationCoordinate2D my_coord;
				
			my_coord.latitude = [self.locationTools my_latitude];
			my_coord.longitude =  [self.locationTools my_longitude];				
			tempCoordinate.latitude = [[t objectAtIndex:1] floatValue]; 
			tempCoordinate.longitude = [[t objectAtIndex:2] floatValue];
				
			MKMapPoint my_point = MKMapPointForCoordinate(my_coord);
			MKMapPoint their_point = MKMapPointForCoordinate(tempCoordinate);
				
			int flag = 0;
			for (int x=0; x<[ov count]; x++) {
				if ([[ov objectAtIndex:x] isKindOfClass:[MKPolyline class]]) {
					MKMapPoint *p = [[ov objectAtIndex:x] points];
					
					int flag1 = 0;
					
					//so, point[0] will always be mine and point[1] will always be their's.
					//to make things easier i'll just compare 0 and 1 respectively.
					//however if i ever change this to include more points i'm kind fucked but...hopefully
					//it won't come to that.
					if (p[0].x == my_point.x  && p[0].y == my_point.y)	{
						if (p[1].x == their_point.x && p[1].y == their_point.y) {
							//so we matched an x and y.  make flag1 = 1 and do NOT add it.
							flag1 = 1;
						}
					}
					
					if (flag1 == 1) {
						flag = 1;
						break;
					}
				}
			}
			
			if (flag == 0) {
				CLLocationCoordinate2D pointArr[2];
				pointArr[0] = my_coord;
				pointArr[1] = tempCoordinate;
				MKPolyline *p = [MKPolyline polylineWithCoordinates:pointArr count:2];
				[self.gameMap addOverlay:p];
			}
		}
			
		[t release];
		[ov release];
	}			
}

/*
 adds and removes the tagging circle overlay ranges
 */
- (void)update_tagging_circles	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	
	
	//remove overlay that aren't there anymore (players might have moved)
	NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
	NSMutableArray *rem = [[NSMutableArray alloc] init];

	for (int y=0; y < [ov count]; y++) {
		if ([[ov objectAtIndex:y] isKindOfClass:[MKCircle class]]) {
			int flag = 0;
			
			if ([self.it_state isEqualToString:@"1"]) {
				CLLocationCoordinate2D my_coord;
				
				my_coord.latitude = [self.locationTools my_latitude];
				my_coord.longitude =  [self.locationTools my_longitude];
				
				if ([[ov objectAtIndex:y] coordinate].latitude == my_coord.latitude && [[ov objectAtIndex:y] coordinate].longitude == my_coord.longitude) {
					flag = 1;
				}				
			}
			else if ([self.it_state isEqualToString:@"0"])	{
				for (int z = 0; z < [self.player_list count]; z++) {
					NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:z]];			
					CLLocationCoordinate2D tempCoordinate;
					
					tempCoordinate.latitude = [[t objectAtIndex:1] floatValue]; // set latitude to required value
					tempCoordinate.longitude = [[t objectAtIndex:2] floatValue]; // set longitude to required value
					
					if ([[ov objectAtIndex:y] coordinate].latitude == tempCoordinate.latitude && [[ov objectAtIndex:y] coordinate].longitude == tempCoordinate.longitude) {
						flag = 1;
						[t release];
						break;
					}
					
					[t release];
				}
			}
			
			//remove the overlay since it wasn't found
			if (flag == 0) {
				[rem addObject:[NSNumber numberWithInt:y]];
			}
		}
	}

	for (int x=0; x<[rem count]; x++) {
		[self.gameMap removeOverlay:[ov objectAtIndex:[[rem objectAtIndex:x] intValue]]];
	}
	
	[ov release];
	[rem release];

	
	
	//add overlays now
	if ([self.it_state isEqualToString:@"1"]) {
		NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
		CLLocationCoordinate2D my_coord;
		
		my_coord.latitude = [self.locationTools my_latitude];
		my_coord.longitude =  [self.locationTools my_longitude];
		
		int flag = 0;
		for (int x=0; x<[ov count]; x++) {
			if ([[ov objectAtIndex:x] isKindOfClass:[MKCircle class]]) {
				if ([[ov objectAtIndex:x] radius] == [[user_prefs stringForKey:@"tagging_radius"] intValue] && [[ov objectAtIndex:x] coordinate].latitude == my_coord.latitude && [[ov objectAtIndex:x] coordinate].longitude == my_coord.longitude) {
					flag = 1;
					break;
				}
			}
		}
		
		if (flag == 0) {
			MKCircle *c = [MKCircle circleWithCenterCoordinate:my_coord radius:[[user_prefs stringForKey:@"tagging_radius"] intValue]];
			[self.gameMap addOverlay:c];
		}
		
		[ov release];
	}
	if ([self.it_state isEqualToString:@"0"]) {
		for (int j = 0; j < [self.player_list count]; j++)	{
			NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:j]];
			NSArray *ov = [[NSArray alloc] initWithArray:[self.gameMap overlays]];
			
			//just show it players
			if ([[t objectAtIndex:3] isEqualToString:@"1"]) {
				CLLocationCoordinate2D tempCoordinate;
				
				tempCoordinate.latitude = [[t objectAtIndex:1] floatValue]; // set latitude to required value
				tempCoordinate.longitude = [[t objectAtIndex:2] floatValue]; // set longitude to required value
				
				int flag = 0;
				for (int x=0; x<[ov count]; x++) {
					if ([[ov objectAtIndex:x] isKindOfClass:[MKCircle class]]) {
						if ([[ov objectAtIndex:x] radius] == [[user_prefs stringForKey:@"tagging_radius"] intValue] && [[ov objectAtIndex:x] coordinate].latitude == tempCoordinate.latitude && [[ov objectAtIndex:x] coordinate].longitude == tempCoordinate.longitude) {
							flag = 1;
							break;
						}
					}
				}
				
				if (flag == 0) {
					MKCircle *c = [MKCircle circleWithCenterCoordinate:tempCoordinate radius:[[user_prefs stringForKey:@"tagging_radius"] intValue]];
					[self.gameMap addOverlay:c];
				}
			}
			
			[t release];
			[ov release];
		}			
	}	
}

/*
 to be more verbose on the annotations we'll do the subtitle formatting here
 */
- (NSString *)do_subtitle_formatting:(int)x	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	NSMutableString *subt = [[[NSMutableString alloc] initWithString:@""] autorelease];
	
	int it = [[[[self player_list] objectAtIndex:x] objectAtIndex:3] intValue];
	
	if ([[user_prefs stringForKey:@"game_type"] isEqualToString:@"free_for_all"]) {
		if (it == 0)	{
			[subt appendString:@"This player is not it."];
		}
		else if (it == 1)	{
			[subt appendString:@"Tag this player to win!"];
		}
		
		
	}
	
	return subt;
}

/*
 this function updates round num if necessary, displays cooldown if so, and reason
 */
- (void)update_round_num	{
	if (self.old_round_num == nil) {
		return;
	}
	
	if (![round_number_label.text isEqualToString:self.round_num]) {
		//the round numbers changed between calls, round must have ended, check cooldown
		if ([self.round_status isEqualToString:@"cooldown"]) {
			//display cooldown dialog, with reason
			if ([self.time_left_in_cooldown intValue] <= 0) {
				//dont show the dialog - we may have joined the game just as the round is about to start
			}
			else {
				//populate/show the dialog if it isn't already showing
				[self set_round_over_label];
				[self set_cooldown_time_label];
				[self set_reason_round_end];
				[self show_cooldown_view];
			}
		}
		
		//update the new round number on the GUI
		round_number_label.text = self.round_num;
	}
	
	//are we in cooldown?
	if ([self.round_status isEqualToString:@"cooldown"]) {
		if ([self.time_left_in_cooldown intValue] <= 0) {
			//dont show the dialog - we may have joined the game just as the round is about to start
			if ([[self.view subviews] containsObject:cooldown_view]) {
				[cooldown_view removeFromSuperview];
			}
		}
		else {
			//populate and show the dialog if it isn't already showing, update the cooldown time left
			[self set_round_over_label];
			[self set_cooldown_time_label];
			[self set_reason_round_end];
			[self show_cooldown_view];
		}	
	}
	else {
		//we're not in cooldown anymore, but the view might still be there - if so remove it!
		if ([[self.view subviews] containsObject:cooldown_view]) {
			[cooldown_view removeFromSuperview];
			self.outlast_tag_flag = @"0";
		}
	}

}

/*
 just as the function reads, this builds the player list to display on the map
 */
- (void)build_player_list:(NSDictionary *)json_dict	{
	[self.player_list removeAllObjects];
	
	NSNumber *i = [NSNumber numberWithInt:0];
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	while ([json_dict valueForKey:[i stringValue]] != nil)	{
		NSArray *tempArray = [json_dict valueForKey:[i stringValue]];
		NSString *t = [[NSString alloc] initWithFormat:@"%@", [tempArray objectAtIndex:0]];
		
		if ([t isEqualToString:[user_prefs stringForKey:@"username"]]) {
			NSString *it = [[NSString alloc] initWithFormat:@"%@", [tempArray objectAtIndex:3]];
			
			if ([it isEqualToString:@"1"]) {
				//we're it!
				self.old_it_state = self.it_state;
				self.it_state = it;
			}
			else {
				//aww, maybe next time
				self.it_state = it;
			}
			
			[self.player_list addObject:tempArray];
			
			[it release];
		}
		else	{
			[self.player_list addObject:tempArray];
		}
		
		i = [NSNumber numberWithInt:[i intValue] + 1];
		
		[t release];
	}	
}

/*
 this function shows the find_game_ping_fail_view if needed, we run out of pong returns
 */
- (void)show_ping_fail_view	{
	find_game_ping_fail_view.layer.cornerRadius = 10;
	[self.view addSubview:find_game_ping_fail_view];
}

- (IBAction)ok_pressed_in_ping_fail_view:(id)sender	{
	[self.view removeFromSuperview];
}

/*
 this function shows the cooldown view if needed
 */
- (void)show_cooldown_view	{
	if (![[self.view subviews] containsObject:cooldown_view]) {
		[self.view addSubview:cooldown_view];
	}
}

/*
 this function updates the GUI round over label in cooldown view
 */
- (void)set_round_over_label	{
	if ([self.old_round_num isEqualToString:self.round_num]) {
		//this is wrong, but there isn't an easy was to fix this.  we know we're already in cooldown, we'll just
		//decrement the old_round_num by 1
		NSString *t = [[NSString alloc] initWithFormat:@"%i", [self.old_round_num intValue] - 1];
		
		self.old_round_num = t;
		
		[t release];
	}
	
	NSString *message = [[NSString alloc] initWithFormat:@"Round %i is over!  Next round starts in:", [self.old_round_num intValue]];

	round_over_label.text = message;
	
	[message release];
}

/*
 this function updates the GUI reason round end in the cooldown view
 */
- (void)set_reason_round_end	{
	NSString *message;
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	if ([self.round_end_reason rangeOfString:@"noone_is_it"].location != NSNotFound) {
		//the player that was it must have left the game
		message = [[NSString alloc] initWithFormat:@"There is noone that is IT, starting new round!"];
	}
	else if ([self.round_end_reason rangeOfString:@"_tagged_by_"].location != NSNotFound) {
		NSString *taggee;
		NSString *tagger;
			
		NSRange endRange1 = [self.round_end_reason rangeOfString:@"_tagged_by_"];
		NSRange search1 = NSMakeRange(0, endRange1.location);
		NSRange search2 = NSMakeRange(endRange1.location+endRange1.length, [self.round_end_reason length] - endRange1.location-endRange1.length);
		NSString *f1 = [self.round_end_reason substringWithRange:search1];
		NSString *f2 = [self.round_end_reason substringWithRange:search2];
		taggee = [NSString stringWithFormat:@"%@", f1];				
		tagger = [NSString stringWithFormat:@"%@", f2];
		message = [[NSString alloc] initWithFormat:@"%@\nwas tagged by\n%@", taggee, tagger];

		if ([self.dont_post_fbook isEqualToString:@"0"]) {
			self.dont_post_fbook = @"1";
			
			if ([tagger isEqualToString:[user_prefs objectForKey:@"username"]]) {
				self.tagged_username = taggee;
				[self post_to_fbook_wall_block:@"i_tagged_them" picture:@"" link:@"" name:@"" caption:@"" description:@""];
			}
			if ([taggee isEqualToString:[user_prefs objectForKey:@"username"]]) {
				self.tagged_username = tagger;
				[self post_to_fbook_wall_block:@"they_tagged_me" picture:@"" link:@"" name:@"" caption:@"" description:@""];
			}
			
		}
	}
	else if ([self.round_end_reason rangeOfString:@"out_of_time"].location != NSNotFound) {
		message = @"OUT OF TIME!  The IT player won this round!";
		
		if ([self.old_it_state isEqualToString:@"1"] && [self.outlast_tag_flag isEqualToString:@"0"]) {
			[self post_to_fbook_wall_block:@"outlasted_time" picture:@"" link:@"" name:@"" caption:@"" description:@""];
			self.outlast_tag_flag = @"1";
		}
	}
	else {
		//something is funky here, those should be the only return messages for a round ending.  set NSException and die.
		[NSException raise:@"Invalid round_end_reason value" format:@"round_end_reason (%@) is invalid", self.round_end_reason];
	}

	round_end_reason_label.text = message;
	
	[message release];
}

/*
 this function updates the GUI cooldown time label based on what was sent in
 */
- (void)set_cooldown_time_label	{
	//should only be minutes and seconds
	int seconds = [self.time_left_in_cooldown intValue];
	int minutes = seconds / 60;
	seconds -= minutes * 60;
	
	NSString *message;
	if (minutes < 10 && seconds > 9) {
		message = [[NSString alloc] initWithFormat:@"0%i:%i", minutes, seconds];
	}
	else if (minutes < 10 && seconds < 10)	{
		message = [[NSString alloc] initWithFormat:@"0%i:0%i", minutes, seconds];

	}
	else if (minutes > 9 && seconds < 10)	{
		message = [[NSString alloc] initWithFormat:@"%i:0%i", minutes, seconds];
	}
	else	{
		message = [[NSString alloc] initWithFormat:@"%i:%i", minutes, seconds];
	}
	
	cooldown_time_label.text = message;
	
	[message release];
}

/*
 this function updates the GUI round time left, based on server time
 */
- (void)update_time_label	{
	//compute time left in the round
	int start = [self.round_time_start intValue];
	int round_length = [self.round_time_length intValue];
	int s_time = [self.server_time intValue];
	int time_left = (start + round_length) - s_time;
	int time_left_original = time_left;
	
	if (time_left < 0) {
		time_left = time_left_original = 0;
	}
	
	//compute hours
	int hours = time_left / 3600;
	//compute minutes
	time_left -= hours * 3600;
	int minutes = time_left / 60;
	//compute seconds
	time_left -= minutes * 60;
	
	//setup message.  
	NSString *message;
	
	if (minutes < 10 && time_left > 9) {
		message = [[NSString alloc] initWithFormat:@"%i:0%i:%i", hours, minutes, time_left];
	}
	else if (minutes > 9 && time_left < 10) {
		message = [[NSString alloc] initWithFormat:@"%i:%i:0%i", hours, minutes, time_left];
	}
	else if (minutes < 10 && time_left < 10) {
		message = [[NSString alloc] initWithFormat:@"%i:0%i:0%i", hours, minutes, time_left];
	}
	else {
		message = [[NSString alloc] initWithFormat:@"%i:%i:%i", hours, minutes, time_left];
	}

	if (time_left_original > 0) {
		self.dont_post_fbook = @"0";
	}
	
	if (time_left_original == 0) {
		[message release];
		message = [[NSString alloc] initWithFormat:@"%@", @"Break time"];
		round_time_left_label.textColor = [UIColor blackColor];
	}
	else if (time_left_original <= 60)	{
		round_time_left_label.textColor = [UIColor redColor];
	}
	else if (time_left_original > 60)	{
		round_time_left_label.textColor = [UIColor blackColor];
	}
	
	round_time_left_label.text = message;
	
	[message release];
}

- (IBAction)quit_confirm_pressed:(id)sender	{
	[self setGameFlag:@"attempting_to_quit_game"];

	self.quit_confirm.enabled = NO;
	self.quit_cancel.enabled = NO;
	[self.serverCall sendQuitGameAPI:self.locationTools];
	
	[self.adView pauseAdAutoRefresh];
}

- (IBAction)quit_cancel_pressed:(id)sender	{
	[confirm_exit removeFromSuperview];
	
	quit.enabled = YES;
	opts_button.enabled = YES;
}

- (IBAction)quitPressed:(id)sender	{
	quit.enabled = NO;
	opts_button.enabled = NO;
	
	[self.view addSubview:confirm_exit];
}

- (IBAction)opts_buttonPressed:(id)sender	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	opts_button.enabled = NO;
	quit.enabled = NO;
	
	if ([[user_prefs stringForKey:@"autosize_map"] isEqualToString:@"1"]) {
		autosize_map.on = YES;
	}
	if ([[user_prefs stringForKey:@"autosize_map"] isEqualToString:@"0"]) {
		autosize_map.on = NO;
	}

	if ([[user_prefs stringForKey:@"show_circle"] isEqualToString:@"1"]) {
		show_circle.on = YES;
	}
	if ([[user_prefs stringForKey:@"show_circle"] isEqualToString:@"0"]) {
		show_circle.on = NO;
	}
	
	if ([[user_prefs stringForKey:@"show_line"] isEqualToString:@"1"]) {
		show_line.on = YES;
	}
	if ([[user_prefs stringForKey:@"show_line"] isEqualToString:@"0"]) {
		show_line.on = NO;
	}
	
	if ([[user_prefs stringForKey:@"map_type"] isEqualToString:@"standard"]) {
		map_type_switcher.selectedSegmentIndex = 0;
	}
	if ([[user_prefs stringForKey:@"map_type"] isEqualToString:@"satellite"]) {
		map_type_switcher.selectedSegmentIndex = 1;
	}
	if ([[user_prefs stringForKey:@"map_type"] isEqualToString:@"hybrid"]) {
		map_type_switcher.selectedSegmentIndex = 2;
	}

	[self.view addSubview:opts_view];
}

- (IBAction)opts_button_donePressed:(id)sender	{
	[opts_view removeFromSuperview];
	
	quit.enabled = YES;
	opts_button.enabled = YES;
}

- (IBAction)opts_view_switch:(id)sender	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	if (sender == autosize_map) {
		if (autosize_map.on == NO) {
			[user_prefs setValue:@"0" forKey:@"autosize_map"];
		}
		if (autosize_map.on == YES) {
			[user_prefs setValue:@"1" forKey:@"autosize_map"];
		}
	}
	
	if (sender == show_circle) {
		if (show_circle.on == NO) {
			[user_prefs setValue:@"0" forKey:@"show_circle"];
		}
		if (show_circle.on == YES) {
			[user_prefs setValue:@"1" forKey:@"show_circle"];
		}		
	}

	if (sender == show_line) {
		if (show_line.on == NO) {
			[user_prefs setValue:@"0" forKey:@"show_line"];
		}
		if (show_line.on == YES) {
			[user_prefs setValue:@"1" forKey:@"show_line"];
		}		
	}

	[user_prefs synchronize];
}

- (IBAction)opts_view_segmented:(id)sender	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	switch (((UISegmentedControl *)sender).selectedSegmentIndex)
	{
		case 0:
		{
			self.gameMap.mapType = MKMapTypeStandard;
			[user_prefs setValue:@"standard" forKey:@"map_type"];

			break;
		} 
		case 1:
		{
			self.gameMap.mapType = MKMapTypeSatellite;
			[user_prefs setValue:@"satellite" forKey:@"map_type"];
			
			break;
		} 
		default:
		{
			self.gameMap.mapType = MKMapTypeHybrid;
			[user_prefs setValue:@"hybrid" forKey:@"map_type"];

			break;
		} 
	}
	
	[user_prefs synchronize];
}

- (void)setLatitudeDelta: (NSDictionary *)json_dict	{
	/*
	 delta is determined as:
	 1 deg of lat = 111 km (per documentation)
	 so (111/1 = x/y) where x = my distance and y is my value to put in span for region
	 in this case i need to divide by 1000 since i'm in meters and need to get to km
	 */	
	float d = [[json_dict valueForKey:@"closest_lat"] floatValue] - [self.locationTools my_latitude];
	float n;
	
	if (d == 0) {
		NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
		n = [[user_prefs stringForKey:@"game_radius"] floatValue];

		n = ((n / 1000) / 111);
	}
	else {
		n = d;
	}

	//span can't be < 0
	if (n < 0) {
		n = n * -1.0;
	}
	
	//we multiply by 2 to keep the user in the middle
	n = n * 2;

	self.coordLatitudeDelta = n;
}

- (void)setLongitudeDelta: (NSDictionary *)json_dict	{
	/*
	 delta is determined as:
	 1 deg of lat = 111 km (per documentation)
	 so (111/1 = x/y) where x = my distance and y is my value to put in span for region
	 in this case i need to divide by 1000 since i'm in meters and need to get to km
	 */	
	float d = [[json_dict valueForKey:@"closest_lng"] floatValue] - [self.locationTools my_longitude];
	float n;
	
	if (d == 0) {
		NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
		n = [[user_prefs stringForKey:@"game_radius"] floatValue];
		
		n = ((n / 1000) / 111);
	}
	else {
		n = d;
	}

	//span can't be < 0
	if (n < 0) {
		n = n * -1.0;
	}
	
	//we multiply by 2 to keep the user in the middle
	n = n * 2;
	
	self.coordLongitudeDelta = n;
}

/*
 our custom delegate method for catching our server responses
 */
- (void)gameview_server_responded	{
	ServerCall *call1 = self.serverCall;

	SBJsonParser *parser = [[SBJsonParser alloc] init];
	NSDictionary *json_dict = [parser objectWithString:call1.server_response];
	[parser release];
	
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	if ([self.gameFlag isEqualToString:@"attempting_to_quit_game"]) {
		if ([[json_dict valueForKey:@"resp"] isEqualToString:@"1"]) {
			//quit was successful
			[user_prefs setObject:[json_dict valueForKey:@"undertitle"] forKey:@"undertitle"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_rank"] forKey:@"overall_rank"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_score"] forKey:@"overall_score"];
			[user_prefs setObject:[json_dict valueForKey:@"overall_players"] forKey:@"overall_players"];
			
			[user_prefs synchronize];
			
			//remove from superview
			[self.newTimer invalidate];
			[self.view removeFromSuperview];
			
			[self.mainscreen_object set_stats_labels];
		}
	}
	
	//call was made to my webserver to add the user to the pending pool, check
	//to see if its pending, NULL, or other
	if ([self.gameFlag isEqualToString:@"adding_to_pool"]) {		
		//was the response from my server what we expect?
		if ([[json_dict valueForKey:@"resp"] isEqualToString:@"pending"]) {
			//yes, we were added to the pool
			[self appendGameLoadingMessage:@"Entered pool, searching for game..." newline:YES];

			[call1 sendPendingPoolAPI:self.locationTools command:@"ping"];
			[self setGameFlag:@"pinging"];
			
			self.server_lock = 0;
			
			return;
		}
		else if ([[json_dict valueForKey:@"resp"] isEqualToString:@"already_in_game"])	{
			[call1 sendPendingPoolAPI:self.locationTools command:@"ping"];
			[self setGameFlag:@"pinging"];

			self.server_lock = 0;
			
			return;
		}
		else {
			//no, something happened, just return and we'll try again later
			[self appendGameLoadingMessage:@"Pool addition attempt failed, retrying..." newline:YES];

			[self setGameFlag:@"getting"];
			self.newTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(gameFlow) userInfo:nil repeats:YES];
			
			self.server_lock = 0;
			
			return;
		}
	}
	
	//still pinging.....
	//lets ping, response will either be:
	//a game_id i was placed into
	//"locked", which means someone is looking to see if i'm a match to play with, so just return
	//"pong", which means noone was found and to try again.	
	if ([self.gameFlag isEqualToString:@"pinging"])	{
		//if the response was a number then we are in a game!
		if ([[json_dict valueForKey:@"resp"] intValue] != 0) {
			//response was a number, lets move on and start the game
			[self setGameFlag:@"grab_initial_round"];
			self.game_id = [[json_dict valueForKey:@"resp"] intValue];
			[self appendGameLoadingMessage:@"Game found!  Loading..." newline:YES];
			if ([self.newTimer isValid]) {
				[self.newTimer invalidate];
				self.newTimer = nil;
			}
			
			[self post_to_fbook_wall_block:@"joined" picture:@"" link:@"" name:@"" caption:@"" description:@""];
		}
		else if ([[json_dict valueForKey:@"resp"] isEqualToString:@"locked"])	{
			//someone is looking to see if i'm a match, do nothing for now
			if (![self.newTimer isValid]) {
				self.newTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(gameFlow) userInfo:nil repeats:YES];
			}
			
			self.server_lock = 0;
			
			return;
		}
		else if ([[json_dict valueForKey:@"resp"] isEqualToString:@"pong"])	{
			//no games found yet, maybe keep a count and return?  over like 100 tries cancel attempt?
			if (self.game_find_attempt > 99) {
				[self setGameFlag:@"game_find_attempt_timeout"];
			}
			else {
				[self incrementGame_find_attempt];
				NSString *temp = [[NSString alloc] initWithFormat:@"Attempt %i", self.game_find_attempt];
				attempt_count_label.text = temp;
				
				if (![self.newTimer isValid]) {
					self.newTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(gameFlow) userInfo:nil repeats:YES];
				}

				[temp release];
				
				self.server_lock = 0;
				
				return;
			}
		}
		else {
			//something unexpected was returned or we got no response yet, just ignore it
			[call1 sendPendingPoolAPI:self.locationTools command:@"ping"];
			
			self.server_lock = 0;
			
			return;
		}
	}

	//if the attempt to find a game "timed out" (too many 'pong' responses) show
	//a popup modal view with tips to increasing chances on finding a game
	//invalidate the timer and quit to main screen
	if ([self.gameFlag isEqualToString:@"game_find_attempt_timeout"]) {
		//show the view, invalidate the timer
		[aiv stopAnimating];
		[find_game_cancel setEnabled:NO];
		
		[call1 sendPendingPoolAPI:self.locationTools command:@"remove"];
		
		[self show_ping_fail_view];
		
		self.server_lock = 0;
		
		return;
	}
	
	//get the round number
	if ([self.gameFlag isEqualToString:@"grab_initial_round"]) {
		[call1 sendLocationAPI:self.locationTools action:@"get_round"];
		[self setGameFlag:@"getting_round"];
		
		self.server_lock = 0;
		
		return;
	}
	
	//getting the round
	if ([self.gameFlag isEqualToString:@"getting_round"]) {		
		if ([[json_dict valueForKey:@"resp"] intValue] != 0) {
			NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
			[user_prefs setObject:[json_dict valueForKey:@"resp"] forKey:@"round_num"];
			[user_prefs synchronize];

			[self setGameFlag:@"grab_initial_json_players"];
		}
	}
	
	//get users for the game, including if i'm IT, render the map, hide the overlay
	if ([self.gameFlag isEqualToString:@"grab_initial_json_players"]) {
		//grab the json list of players to render the map
		[call1 sendLocationAPI:self.locationTools action:@"get_all"];
		[self setGameFlag:@"grabbing_initial"];
		
		self.server_lock = 0;
		
		return;
	}
	
	//make call to get distance from me to "it"
	if ([self.gameFlag isEqualToString:@"grabbing_initial"]) {
		[self build_player_list:json_dict];

		[call1 sendLocationAPI:self.locationTools action:@"get_dist_from_it"];
		
		[self setGameFlag:@"get_distance2"];
		
		self.server_lock = 0;
		
		return;
	}
	
	//check response for checking distance from me to "it" (or if i'm it, from it to closest person)
	if ([self.gameFlag isEqualToString:@"get_distance2"]) {
		[self setLatitudeDelta:json_dict];
		[self setLongitudeDelta:json_dict];
			
		self.gameMap = [[MKMapView alloc] initWithFrame:self.map_container.bounds];
		[self.map_container addSubview:self.gameMap];
		self.gameMap.showsUserLocation = YES;
		
		if ([[user_prefs stringForKey:@"map_type"] isEqualToString:@"standard"]) {
			self.gameMap.mapType = MKMapTypeStandard;
		}
		if ([[user_prefs stringForKey:@"map_type"] isEqualToString:@"satellite"]) {
			self.gameMap.mapType = MKMapTypeSatellite;
		}
		if ([[user_prefs stringForKey:@"map_type"] isEqualToString:@"hybrid"]) {
			self.gameMap.mapType = MKMapTypeHybrid;
		}
		
		self.gameMap.delegate = self;
		
		[self scrollRegion];
		
		//add the players
		[self doAnnotations];
		
		[self setGameFlag:@"show_map"];

		//set some default GUI stuff
		round_time_left_label.text = @"";
		
		//make the spinning overlay hide
		[self.view addSubview:game_view];
		
		[call1 sendLocationAPI:self.locationTools action:@"main_game"];
		
		[self setGameFlag:@"main_game_loop"];
		self.newTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(gameFlow) userInfo:nil repeats:YES];

		self.server_lock = 0;
		
		return;
	}
	
	if ([self.gameFlag isEqualToString:@"main_game_loop"]) {
		NSString *game_type = [user_prefs stringForKey:@"game_type"];
		
		/*
		 check to make sure game is still going.  if not, show popup and return to main screen
		 */
		if ([self.game_status isEqualToString:@"terminated"]) {
			UIAlertView *terminated = [[[UIAlertView alloc] initWithTitle:@"Game Terminated" message:@"The current game was terminated due to too few players." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil] autorelease];
			[terminated show];
			
			[self.newTimer invalidate];
			[self.view removeFromSuperview];
		}
		
		/*
		 global returns from all of these
		 ['round_time_start']
		 x - used for game timer
		 */
		if ([game_type isEqualToString:@"free_for_all"]) {
			//free for all game type main loop
			
			//json return for this game type:
			/*
			 ['game_status'] =
				in_progress
				terminated
			 ['round_status'] =
				in_progress
				cooldown
			 ['time_left_in_cooldown'] (only if "round_status" = "cooldown") =
				 x (in seconds)
			 ['round_end_reason'] =
				 noone_is_it
				 '' (blank ... if it's blank, round still going on)
				 usernameX_tagged_by_usernameY (x should be person not it, y should be person that was it)
			 ['round_num'] =
				 x (current round)
			 ['how_many_in_my_zone']
				 x (current players in my taggable zone)
			 ['whose_in_my_zone']
				 x (blank if > 1 person, otherwise the username)
			 ['i_entered_tag_zone']
				 x (either 0 or 1, 1 if im in it)
			 ['time_entered_zone']
				 unix timestamp or ''
			 ['server_time']
				 unix timestamp, current returned server time
			 ['round_time_length']
				 int, in seconds, of how long the round should be (constant), used for math determining how much time is left
			 ['closest_lat']
				 float representing the user that is closest to me for setLatitudeDelta
			 ['closest_lng']
				 float representing the user that is closest to me for setLongitudeDelta
			 ['tagging_radius']
				 int representing radius for circle overlay around it players.
			 */
				
			//let's first set the old values before updating the new server responses
			//to set notifications on the iphone if i want to
			self.old_round_time_start = self.round_time_start;
			self.old_game_status = self.game_status;
			self.old_round_status = self.round_status;
			self.old_time_left_in_cooldown = self.time_left_in_cooldown;
			self.old_round_end_reason = self.round_end_reason;
			self.old_round_num = self.round_num;
			self.old_how_many_in_my_zone = self.how_many_in_my_zone;
			self.old_whose_in_my_zone = self.whose_in_my_zone;
			self.old_i_entered_tag_zone = self.i_entered_tag_zone;
			self.old_time_entered_zone = self.time_entered_zone;
			self.old_server_time = self.server_time;
			self.old_round_time_length = self.round_time_length;
				
			//ok now lets save over our local copy with the new server values
			NSString *val_t = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"round_time_start"]];
			self.round_time_start = val_t;
			[val_t release];
				
			NSString *val_t1 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"game_status"]];
			self.game_status = val_t1;
			[val_t1 release];
				
			NSString *val_t2 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"round_status"]];
			self.round_status = val_t2;
			[val_t2 release];
				
			NSString *val_t3 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"time_left_in_cooldown"]];
			self.time_left_in_cooldown = val_t3;
			[val_t3 release];
				
			NSString *val_t4 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"round_end_reason"]];
			self.round_end_reason = val_t4;
			[val_t4 release];
				
			NSString *val_t5 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"round_num"]];
			self.round_num = val_t5;
			[val_t5 release];
				
			NSString *val_t6 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"how_many_in_my_zone"]];
			self.how_many_in_my_zone = val_t6;
			[val_t6 release];
				
			NSString *val_t7 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"whose_in_my_zone"]];
			self.whose_in_my_zone = val_t7;
			[val_t7 release];
				
			NSString *val_t8 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"i_entered_tag_zone"]];
			self.i_entered_tag_zone = val_t8;
			[val_t8 release];
				
			NSString *val_t9 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"time_entered_zone"]];
			self.time_entered_zone = val_t9;
			[val_t9 release];
				
			NSString *val_t10 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"server_time"]];
			self.server_time = val_t10;
			[val_t10 release];
				
			NSString *val_t11 = [[NSString alloc] initWithFormat:@"%@", [json_dict valueForKey:@"round_time_length"]];
			self.round_time_length = val_t11;
			[val_t11 release];
				
			[user_prefs setObject:self.round_num forKey:@"round_num"];
			[user_prefs setObject:[json_dict valueForKey:@"tagging_radius"] forKey:@"tagging_radius"];
			[user_prefs setObject:[json_dict valueForKey:@"closest_lat"] forKey:@"closest_lat"];
			[user_prefs setObject:[json_dict valueForKey:@"closest_lng"] forKey:@"closest_lng"];
			[user_prefs synchronize];
	
			//update the GUI
			//update the time left in the round
			[self update_time_label];
				
			//determine round number if there's a difference/cooldown/reason
			[self update_round_num];
				
			//build a new player list (don't show the players on the map during cooldown??)
			[self build_player_list:json_dict];
				
			//update the annotations
			[self update_players_on_map];
				
			//set the new map delta if "it" player moved at all and is now off the map screen
			[self setLatitudeDelta:json_dict];
			[self setLongitudeDelta:json_dict];
				
			//refresh/scroll to our region desired
			if ([[user_prefs stringForKey:@"autosize_map"] isEqualToString:@"1"]) {
				[self scrollRegion];
			}
			
			self.server_lock = 0;
		}
	}
}

/*
 mkmapview delegate override for drawing annotations
 */
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation	{
	if (annotation == mapView.userLocation) {
		return nil;
	}
	
	int j = 0;
	for (int i = 0; i < [[self.gameMap annotations] count]; i++) {
		if ([[[self.gameMap annotations] objectAtIndex:i] title] == [annotation title]) {
			j = i;
			break;
		}
	}
	
	if ([[[self.gameMap annotations] objectAtIndex:j] image_name] == NULL) {
		return nil;
	}
	
    MKAnnotationView *customAnnotationView=[[[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:nil] autorelease];
    UIImage *pinImage = [UIImage imageNamed:[[[self.gameMap annotations] objectAtIndex:j] image_name]];
	
    [customAnnotationView setImage:pinImage];
    customAnnotationView.canShowCallout = YES;
    return customAnnotationView;
}

/*
 mkmapview delegate override for annotationView selection
 */
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view	{
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	
	if([view.annotation isKindOfClass:[MKUserLocation class]])	{
		self.playerSelectedCallout = [user_prefs stringForKey:@"username"];
	}
	else {
		self.playerSelectedCallout = [view.annotation title];
	}
	
	
	UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	
	[rightButton addTarget:self	action:@selector(showPlayerStatistics:) forControlEvents:UIControlEventTouchUpInside];

	view.rightCalloutAccessoryView = rightButton;
}

/*
 rightButton in callout pressed
 */
- (IBAction)showPlayerStatistics: (id)sender {
	//add subview if it isn't already there
	NSArray *v = [self.view subviews];
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];

	int flag = 0;
	for (int y=0; y < [v count]; y++) {
		if ([v objectAtIndex:y] == statisticsView) {
			flag = 1;
			break;
		}
	}
	
	if (flag == 0) {
		[self.view addSubview:statisticsView];		
	}
	
	for (int x=0; x < [player_list count]; x++) {
		NSArray *playa = [player_list objectAtIndex:x];
		
		if ([[playa objectAtIndex:0] isEqualToString:self.playerSelectedCallout]) {
			//we found the guy we clicked, give stats
			NSString *l = [NSString stringWithFormat:@"Rank:  %@ out of %@ players\nScore:  %@\nUndertitle:  %@\nTags in Current Game:  %@ tags\nTagged by others this game:  %@ times\nYou tagged them:  %@ times\nThey tagged you:  %@ times", [playa objectAtIndex:4], [user_prefs stringForKey:@"overall_players"], [playa objectAtIndex:5], [playa objectAtIndex:6], [playa objectAtIndex:7], [playa objectAtIndex:8], [playa objectAtIndex:9], [playa objectAtIndex:10]];
			
			statisticsLabel.text = l;
		}
	}
}

/*
 mkmapview delegate override for drawing overlays
 */
- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay	{
	MKOverlayView *overlayReturn = nil;
		
	if ([overlay isKindOfClass:[MKCircle class]] == YES) {
		MKCircleView *c = [[[MKCircleView alloc] initWithCircle:overlay] autorelease];

		c.alpha = .4;

		if ([self.it_state isEqualToString:@"1"]) {
			c.fillColor = [UIColor redColor];
			c.strokeColor = [UIColor redColor];
		}
		else if ([self.it_state isEqualToString:@"0"])	{
			c.fillColor = [UIColor greenColor];
			c.strokeColor = [UIColor greenColor];
		}
		
		overlayReturn = c;
	}
	
	if ([overlay isKindOfClass:[MKPolyline class]] == YES) {
		MKPolylineView *p = [[[MKPolylineView alloc] initWithPolyline:overlay] autorelease];

		p.alpha = .4;
		
		if ([self.it_state isEqualToString:@"1"]) {
			p.fillColor = [UIColor redColor];
			p.strokeColor = [UIColor redColor];
			p.lineWidth = 5;
		}
		else if ([self.it_state isEqualToString:@"0"])	{
			p.fillColor = [UIColor greenColor];
			p.strokeColor = [UIColor greenColor];
			p.lineWidth = 5;
		}
		
		overlayReturn = p;
	}
	
	return overlayReturn;
}

/*
 put the pins on the map
 */
- (void) doAnnotations {
	NSMutableArray *annotationList = [[NSMutableArray alloc] init];
	NSUserDefaults *user_prefs = [NSUserDefaults standardUserDefaults];
	NSString *game_type = [user_prefs stringForKey:@"game_type"];
	
	for (int x = 0; x < [self.player_list count]; x++) {
		//determine game_type since we might want to control this in the future
		if ([game_type isEqualToString:@"free_for_all"]) {
			//if i'm "IT", show everyone except myself
			if ([self.it_state isEqualToString:@"1"]) {
				if ([[[self.player_list objectAtIndex:x] objectAtIndex:0] isEqualToString:[user_prefs stringForKey:@"username"]]) {
					//do nothing
				}
				else	{
					NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:x]];
				
					AnnotationListObject *newAnnotation = [AnnotationListObject new];
					CLLocationCoordinate2D tempCoordinate;
					
					tempCoordinate.latitude = [[t objectAtIndex:1] floatValue]; // set latitude to required value
					tempCoordinate.longitude = [[t objectAtIndex:2] floatValue]; // set longitude to required value
					[newAnnotation setCoordinate: tempCoordinate];
					[newAnnotation setTitle: [t objectAtIndex:0]];
					[newAnnotation setSubtitle: [self do_subtitle_formatting:x]];
					newAnnotation.image_name = @"pin-not-it-player.png";
					[annotationList addObject: newAnnotation];
					[newAnnotation release];
					[t release];
				}
			}
     	    else if([self.it_state isEqualToString:@"0"])	{
				NSArray *t = [[NSArray alloc] initWithArray:[self.player_list objectAtIndex:x]];
		
				//just show it players
				if ([[t objectAtIndex:3] isEqualToString:@"1"]) {
					AnnotationListObject *newAnnotation = [AnnotationListObject new];
					CLLocationCoordinate2D tempCoordinate;
		
					tempCoordinate.latitude = [[t objectAtIndex:1] floatValue]; // set latitude to required value
					tempCoordinate.longitude = [[t objectAtIndex:2] floatValue]; // set longitude to required value
					[newAnnotation setCoordinate: tempCoordinate];
					[newAnnotation setTitle: [t objectAtIndex:0]];
					[newAnnotation setSubtitle: [self do_subtitle_formatting:x]];
					newAnnotation.image_name = @"pin-it-player.png";
					[annotationList addObject: newAnnotation];
					[newAnnotation release];
				}
				
				[t release];
			}
		}
	}
	
	[self.gameMap addAnnotations: annotationList];
	[annotationList release];
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
	
	[self.adView cancelAd];
	self.adView.delegate = nil;
	self.adView = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[self.adView cancelAd];
	self.adView.delegate = nil;
	self.adView = nil;
	
	[gameMap release];
	[gameFlag release];
	[serverCall release];
	[locationTools release];
	[loadingGame release];
	[round_end_reason_label release];
	[cooldown_time_label release];
	[round_over_label release];
	[loadingGameMessage release];
	[cooldown_view release];
	[round_time_left_label release];
	[round_number_label release];	
	[find_game_ping_fail_view release];
	[player_list release];
	[it_state release];
	[map_container release];
	[game_view release];
	[confirm_exit release];
	[opts_view release];
	[quit release];
	[opts_button release];
	[quit_confirm release];
	[quit_cancel release];
	[attempt_count_label release];
	[round_time_start release];
	[game_status release];
	[round_status release];
	[time_left_in_cooldown release];
	[round_end_reason release];
	[round_num release];
	[how_many_in_my_zone release];
	[whose_in_my_zone release];
	[i_entered_tag_zone release];
	[time_entered_zone release];
	[server_time release];
	[round_time_length release];
	[old_round_time_start release];
	[old_game_status release];
	[old_round_status release];
	[old_time_left_in_cooldown release];
	[old_round_end_reason release];
	[old_round_num release]; 
	[old_how_many_in_my_zone release];
	[old_whose_in_my_zone release];
	[old_i_entered_tag_zone release];
	[old_time_entered_zone release];
	[old_server_time release];
	[old_round_time_length release];
	[aiv release];
	[opts_done_button release];
	[map_type_switcher release];
	[autosize_map release];
	[show_circle release];
	[show_line release];
	[playerSelectedCallout release];
	[statisticsView release];
	[statisticsLabel release];
	[old_it_state release];
	[outlast_tag_flag release];
	[statisticsButtonClose release];
	[mainscreen_object release];
	[fbook release];
	[dont_post_fbook release];
	[tagged_username release];
	[fbook_user release];
	[fbook_user_name release];
	[kAppId release];
	[fbook_json_user release];
	[initialize_background release];
	[fail_background release];

    [super dealloc];
}

@end