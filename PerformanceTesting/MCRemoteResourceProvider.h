//
//  MCRemoteResourceProvider.h
//  PerformanceTesting
//
//  Created by Madis Nõmme on 2/18/11.
//  Copyright 2011 Indilo Wireless. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MCRemoteResourceProvider <NSObject>

- (void)sendData:(NSData *)data;

@end
