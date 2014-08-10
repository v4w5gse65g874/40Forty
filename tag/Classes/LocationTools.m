//
//  LocationTools.m
//  tag
//
//  Created by ken rufe on 7/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LocationTools.h"

@implementation LocationTools

@synthesize locationManager, my_latitude, my_longitude;

- (void)getLocation	{
	CLLocationManager *locationManager1 = [[CLLocationManager alloc] init];
	locationManager1.delegate = self;
	
	self.locationManager = locationManager1;
	[locationManager1 release];
	
	
	self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
	self.locationManager.distanceFilter = kCLDistanceFilterNone;

	[self start];
}

- (void)start	{
	[self.locationManager startUpdatingLocation];
}

- (void)stop	{
	[self.locationManager stopUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	self.my_latitude = newLocation.coordinate.latitude;
	self.my_longitude = newLocation.coordinate.longitude;
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
	UIAlertView *alert;
	
	alert = [[UIAlertView alloc] initWithTitle:@"Error" message:[error description] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];

	[alert show];
	[alert release];
}

- (void)dealloc	{
	[locationManager release];
	
	[super dealloc];
}

@end