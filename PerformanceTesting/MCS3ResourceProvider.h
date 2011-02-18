//
//  MCS3ResourceProvider.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/18/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCRemoteResourceProvider.h"
#import <AWSiosSDK/S3/AmazonS3Client.h>

@interface MCS3ResourceProvider : NSObject<MCRemoteResourceProvider> {
	AmazonS3Client *s3client;
}

@property (nonatomic, retain) AmazonS3Client *s3;

+ (MCS3ResourceProvider *)sharedProvider;
- (void)sendData:(NSData *)data;

@end
