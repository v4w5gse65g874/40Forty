//
//  AnnotationListObject.m
//  tag
//
//  Created by ken rufe on 7/24/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AnnotationListObject.h"

@implementation AnnotationListObject

@synthesize coordinate, title, subtitle, image, image_name;

- (void)dealloc	{
	[title release];
	[subtitle release];
	[image release];
	
	[super dealloc];
}

@end