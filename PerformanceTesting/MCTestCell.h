//
//  MCTestCell.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/14/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PageCell.h"

@interface MCTestCell : PageCell {
    
	UIView *progressMade;
	UIView *progressBackground;
}
@property (nonatomic, retain) IBOutlet UIView *progressMade;
@property (nonatomic, retain) IBOutlet UIView *progressBackground;

- (IBAction)rerunTestPushed:(id)sender;

@end
