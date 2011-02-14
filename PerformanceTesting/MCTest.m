//
//  MCTest.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCTest.h"


@implementation MCTest
@synthesize delegate, name, description;

- (void)run
{
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

@end
