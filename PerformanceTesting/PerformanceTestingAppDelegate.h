//
//  PerformanceTestingAppDelegate.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/9/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PerformanceTestingAppDelegate : NSObject <UIApplicationDelegate> {
@private

	UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
