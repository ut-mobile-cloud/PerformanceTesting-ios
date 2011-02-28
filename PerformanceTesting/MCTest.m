//
//  MCTest.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCTest.h"


@implementation MCTest
@synthesize delegate, name, description, remoteResource;

- (id)initWithName:(NSString *)theName description:(NSString *)theDescription
{
	self = [super init];
	if(self) {
		name = [theName retain];
		description = [theDescription retain];
	}
	return self;
}
- (void)run
{
//	Uncomment to make this class behave more like a base class 
//	(ie subclass has to define this method)
	/*
	[NSException raise:NSInternalInconsistencyException 
				format:@"This method has to be overridden in a subclass"];
	 */
	progress = 0.0;
	[NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(informDelegate:) userInfo:nil repeats:YES];
}

- (void)informDelegate:(NSTimer *)timer
{
	progress += 1;
	[self.delegate mctest:self changedProgressTo:(float)progress];
	if(fabs(progress - 100) < 0.1) {
		[timer invalidate];
		timer = nil;
	}
}

- (void)dealloc
{
	[remoteResource release];
	[name release];
	[description release];
	[super dealloc];
}

@end
