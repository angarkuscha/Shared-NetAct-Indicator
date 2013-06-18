//
//  AGNetworkActivity.m
//  Shared-NetAct-Indicator
//
//  Created by Andreas Garkuscha on 6/18/13.
//  Copyright (c) 2013 Andreas Garkuscha. All rights reserved.
//

#import "AGNetworkActivity.h"

static __weak AGNetworkActivity* sharedInstance = nil;

@implementation AGNetworkActivity

+ (AGNetworkActivity*)sharedNetworkActivity {
    AGNetworkActivity* currentActivity;
    @synchronized([AGNetworkActivity class]) {
        if (!sharedInstance) {
            sharedInstance = currentActivity = [[AGNetworkActivity alloc] init];
            [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
        } else {
            currentActivity = sharedInstance;
        }
    }
    return currentActivity;
}

- (void)dealloc {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

@end
