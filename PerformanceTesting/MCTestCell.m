//
//  MCTestCell.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCTestCell.h"
#import "MCTest.h"

@implementation MCTestCell
@synthesize progressMade;
@synthesize progressBackground;
@synthesize testName;
@synthesize testDescription;

+ (NSString *)nibName
{
	return @"MCTestCell";
}

- (void)handleSelectionInTableView:(UITableView *)aTableView
{
	// Should perform appropriate action when clicked on, eg. push view controller with test results
	DLog(@"Handling selection");
}

- (void)finishConstruction
{
	self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (CGRect)resizeFrame:(CGRect)frame widthToPercent:(CGFloat)percent ofMax:(CGFloat)maxWidth
{
	CGFloat newSize = floor(maxWidth * percent);
	return CGRectMake(frame.origin.x, frame.origin.y, newSize, frame.size.height);
}

- (void)mctest:(MCTest *)test changedProgressTo:(float)newProgress
{
	[UIView beginAnimations:nil context:nil];
	DLog(@"Progress made : %.2f ", newProgress);
	self.progressMade.frame = [self resizeFrame:self.progressMade.frame widthToPercent:newProgress/100 ofMax:self.progressBackground.frame.size.width];
	[UIView commitAnimations];
}

- (void)configureForData:(id)dataObject tableView:(UITableView *)aTableView indexPath:(NSIndexPath *)anIndexPath
{
	[super configureForData:dataObject tableView:aTableView indexPath:anIndexPath];
	MCTest *test = (MCTest *)dataObject;
	self.testName.text = test.name;
	self.testDescription.text = test.description;
	self.progressMade.frame = [self resizeFrame:self.progressMade.frame 
								 widthToPercent:0.0 
										  ofMax:self.progressBackground.frame.size.width];
}

- (void)dealloc {
	[progressMade release];
	[progressBackground release];
	[testName release];
	[testDescription release];
	[super dealloc];
}

- (IBAction)rerunTestPushed:(id)sender {
	MCTest *sampleTest = [[MCTest alloc] init];
	sampleTest.delegate = self;
	[sampleTest run];
}
@end
