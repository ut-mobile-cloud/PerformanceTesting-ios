//
//  MCTestsController.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/11/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageViewController.h"
#import "MCTestDelegate.h"
@interface MCTestsController : PageViewController <MCTestDelegate> {
    NSMutableArray *tests;
}
@property (nonatomic, retain) NSMutableArray *tests;

- (IBAction)rerunTestsPressed:(id)sender;
- (IBAction)runTestsPressed:(id)sender;

@end
