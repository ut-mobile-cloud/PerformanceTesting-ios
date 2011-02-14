//
//  MCTestCell.m
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import "MCTestCell.h"


@implementation MCTestCell
@synthesize progressMade;
@synthesize progressBackground;

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

- (void)configureForData:(id)dataObject tableView:(UITableView *)aTableView indexPath:(NSIndexPath *)anIndexPath
{
	[super configureForData:dataObject tableView:aTableView indexPath:anIndexPath];
	[UIView beginAnimations:nil context:nil];
	self.progressMade.frame = [self resizeFrame:self.progressMade.frame 
								 widthToPercent:0.8 
										  ofMax:self.progressBackground.frame.size.width];
	[UIView commitAnimations];
}

- (void)dealloc {
	[progressMade release];
	[progressBackground release];
	[super dealloc];
}

- (IBAction)rerunTestPushed:(id)sender {
	self.progressMade.frame = [self resizeFrame:self.progressMade.frame widthToPercent:0 ofMax:self.progressBackground.frame.size.width];
	[UIView beginAnimations:nil context:nil];
		self.progressMade.frame = [self resizeFrame:self.progressMade.frame widthToPercent:0.66 ofMax:self.progressBackground.frame.size.width];
	
	[UIView commitAnimations];
}
@end
