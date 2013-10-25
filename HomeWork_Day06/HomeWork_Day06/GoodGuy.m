//
//  GoodGuy.m
//  demoProtocol
//
//  Created by techmaster on 9/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "GoodGuy.h"

@implementation GoodGuy

#pragma mark - RestaurantGuard
- (BOOL) isHeightOver18
{
    return TRUE;
}
- (void) speakEnglish
{
    NSLog(@"Hello Sir");
}


- (BOOL) love2PlayFlute
{
    return YES;
}
- (BOOL) payMemberFee
{
    return YES;
}

@end
