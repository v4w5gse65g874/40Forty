//
//  LocationTools.h
//  tag
//
//  Created by ken rufe on 7/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManagerDelegate.h>

@interface LocationTools : NSObject <CLLocationManagerDelegate>	{
	CLLocationManager *locationManager;
	
	float my_latitude;
	float my_longitude;
}

- (void)getLocation;
- (void)start;
- (void)stop;

@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, assign) float my_latitude;
@property (nonatomic, assign) float my_longitude;

@end
