//
//  MCTestDelegate.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MCTest;
@protocol MCTestDelegate <NSObject>

- (void)mctest:(MCTest *)test changedProgressTo:(float)newProgress;

@end
