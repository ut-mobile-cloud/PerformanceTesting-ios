//
//  MCS3Test.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/18/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCS3Test.h"
#import "MCS3ResourceProvider.h"

@implementation MCS3Test

- (id)init
{
	self = [super initWithName:@"Amazon S3 storage test" description:@"Will test and report upload performance to amazon S3 storage service"];
	if(self) {
		self.remoteResource = [[MCS3ResourceProvider alloc] init];
	}
	return self;
}

- (void)run
{
	DLog(@"Subclass is running")
}
@end
