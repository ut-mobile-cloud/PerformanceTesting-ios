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

@implementation MCTestsController


- (NSString *)nibName
{
	DLog(@"Was asked the nibName");
	return @"MCTestsView";
}

- (void)createRows
{
	[self addSectionAtIndex:0 withAnimation:UITableViewRowAnimationFade];
	for (NSInteger i = 0; i < 4; i++)
	{
		[self
		 appendRowToSection:0
		 cellClass:[MCTestCell class]
		 cellData:nil
		 withAnimation:(i % 2) == 0 ?
		 UITableViewRowAnimationLeft :
		 UITableViewRowAnimationRight];
	}
}

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.useCustomHeaders = YES;
	[self removeAllSectionsWithAnimation:UITableViewRowAnimationFade];
	[self performSelector:@selector(createRows) withObject:nil afterDelay:0.5];
}

- (IBAction)rerunTestsPressed:(id)sender
{
	DLog(@"Re-running all tests");
}

- (IBAction)runTestsPressed:(id)sender
{
	DLog(@"Running tests");
}

- (void)viewDidUnload {
	[super viewDidUnload];
}
@end
