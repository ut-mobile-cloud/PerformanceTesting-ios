//
//  MCS3ResourceProvider.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/18/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCS3ResourceProvider.h"

static NSString *MCAmazonAccessKey = @"AKIAIJWVQSBLQ4VY6NWQ";
static NSString *MCAmazonSecretKey = @"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";
static NSString *MCAmazonS3TestBucketName = @"MCAmazonS3TestBucketName";

@implementation MCS3ResourceProvider
@synthesize s3 = s3client;


- (void)sendData:(NSData *)data
{
	S3PutObjectRequest *request = [[S3PutObjectRequest alloc] initWithKey:@"WhatIsThisKey" inBucket:MCAmazonS3TestBucketName];
	request.data = data;
	request.filename = @""; // TODO: make the filename identifiable
	S3PutObjectResponse *response = [self.s3 putObject:request];
	DLog(@"Response date : ", response.date);
	
}

+ (MCS3ResourceProvider *)sharedProvider
{
	static MCS3ResourceProvider *providerInstance = nil;
	if(providerInstance == nil) {
		providerInstance = [[MCS3ResourceProvider alloc] init];
	}
	return providerInstance;
}


#pragma mark NSObject

- (id)init
{
	self = [super init];
	if(self) {
		s3client = [[AmazonS3Client alloc] initWithAccessKey:MCAmazonAccessKey 
											   withSecretKey:MCAmazonSecretKey];
	}
	return self;
}

- (void)dealloc
{
	[s3client release];
	[super dealloc];
}
@end
