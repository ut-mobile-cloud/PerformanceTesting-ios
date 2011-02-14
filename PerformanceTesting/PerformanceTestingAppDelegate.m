//
//  PerformanceTestingAppDelegate.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/9/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "PerformanceTestingAppDelegate.h"
#import "MCTestsController.h"
@implementation PerformanceTestingAppDelegate

@synthesize tabBarController;
@synthesize window;
@synthesize resultsTabBarItem;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	// Override point for customization after application launch.
	[self.window addSubview:self.tabBarController.view];
//	self.resultsTabBarItem.badgeValue = @"!";
	[self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	/*
	 Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	 Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	 */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Save data if appropriate.
}

- (void)dealloc {

	[window release];
    [tabBarController release];
	[resultsTabBarItem release];
    [super dealloc];
}

@end
