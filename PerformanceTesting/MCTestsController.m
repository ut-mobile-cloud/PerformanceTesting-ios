//
//  MCTestsController.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/11/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCTestsController.h"
#import "JSON.h"

#import "LabelCell.h"
#import "MCTestCell.h"
#import "GradientBackgroundTable.h"
#import "MCTest.h"
#import "MCS3Test.h"

@implementation MCTestsController
@synthesize tests;

- (IBAction)rerunTestsPressed:(id)sender
{
	DLog(@"Re-running all tests");
}

- (IBAction)runTestsPressed:(id)sender
{
	/**	
	TODO: each test should conform to a test protocol
	 tests should have delegate whose one method would be to monitor progress
	*/	
}

- (void)createRows
{
	[self addSectionAtIndex:0 withAnimation:UITableViewRowAnimationFade];
	for (NSInteger i = 0; i < 4; i++)
	{
		[self
		 appendRowToSection:0
		 cellClass:[MCTestCell class]
		 cellData:[self.tests objectAtIndex:0]
		 withAnimation:(i % 2) == 0 ?
		 UITableViewRowAnimationLeft :
		 UITableViewRowAnimationRight];
	}
}

#pragma mark MCTestDelegate
- (void)mctest:(MCTest *)test changedProgressTo:(float)newProgress
{
	DLog(@"Test is now %.2f %% complete", newProgress);
}
#pragma mark PageViewController

- (NSString *)nibName
{
	DLog(@"Was asked the nibName");
	return @"MCTestsView";
}

#pragma mark UIViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	if(tests != nil) {
		[tests release];
	}
	tests = [[NSMutableArray alloc] init];
	self.useCustomHeaders = YES;
	[self removeAllSectionsWithAnimation:UITableViewRowAnimationFade];
//	MCTest *test = [[MCTest alloc] initWithName:@"Sample test" description:@"Sample test description. Lets see"];
	MCS3Test *test = [[MCS3Test alloc] init];
	[self.tests addObject:test];
	[self performSelector:@selector(createRows) withObject:nil afterDelay:0.5];
}

- (void)viewDidUnload
{
	[super viewDidUnload];
}

- (void)dealloc
{
	[tests release];
	[super dealloc];
}
@end
