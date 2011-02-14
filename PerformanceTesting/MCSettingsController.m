//
//  MCSettingsController.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/11/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCSettingsController.h"
#import "LabelCell.h"
#import "GradientBackgroundTable.h"

@implementation MCSettingsController

- (void)createRows
{
	[self addSectionAtIndex:0 withAnimation:UITableViewRowAnimationFade];
	for (NSInteger i = 0; i < 4; i++)
	{
		[self
		 appendRowToSection:0
		 cellClass:[LabelCell class]
		 cellData:[NSString stringWithFormat:
				   NSLocalizedString(@"This is row %ld", @""), i + 1]
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

- (void)loadView
{
	GradientBackgroundTable *aTableView =
	[[[GradientBackgroundTable alloc]
	  initWithFrame:CGRectZero
	  style:UITableViewStyleGrouped]
	 autorelease];
	
	self.view = aTableView;
	self.tableView = aTableView;
}
@end
