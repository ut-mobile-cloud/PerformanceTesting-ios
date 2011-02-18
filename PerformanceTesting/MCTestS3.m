//
//  MCTestS3.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/18/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCTestS3.h"
#import "MCS3ResourceProvider.h"

@implementation MCTestS3

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
	
}
@end
