//
//  MCTestCell.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PageCell.h"
#import "MCTestDelegate.h"

@interface MCTestCell : PageCell<MCTestDelegate> {
    
	UIView *progressMade;
	UIView *progressBackground;
	UILabel *testName;
	UILabel *testDescription;
}
@property (nonatomic, retain) IBOutlet UIView *progressMade;
@property (nonatomic, retain) IBOutlet UIView *progressBackground;
@property (nonatomic, retain) IBOutlet UILabel *testName;
@property (nonatomic, retain) IBOutlet UILabel *testDescription;

- (IBAction)rerunTestPushed:(id)sender;

@end
