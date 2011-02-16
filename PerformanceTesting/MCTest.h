//
//  MCTest.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCTestDelegate.h"

@interface MCTest : NSObject {
	NSString *name;
	NSString *description;
    id<MCTestDelegate>delegate;
	float progress;
}
@property (nonatomic, retain) id<MCTestDelegate>delegate;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;

- (id)initWithName:(NSString *)theName description:(NSString *)theDescription;
- (void)run;

@end
