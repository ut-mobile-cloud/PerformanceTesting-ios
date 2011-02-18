//
//  MCTest.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCTestDelegate.h"
#import "MCRemoteResourceProvider.h"

@interface MCTest : NSObject {
	@private
	NSString *name;
	NSString *description;
    id<MCTestDelegate>delegate;
	id<MCRemoteResourceProvider> remoteResource;
	float progress;
}

@property (nonatomic, retain) id<MCTestDelegate>delegate;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) id<MCRemoteResourceProvider> remoteResource;

- (id)initWithName:(NSString *)theName description:(NSString *)theDescription;
- (void)run;

@end
