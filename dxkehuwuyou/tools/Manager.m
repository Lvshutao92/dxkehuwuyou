//
//  Manager.m
//  dxkehuwuyou
//
//  Created by ilovedxracer on 2018/10/15.
//  Copyright © 2018 ilovedxracer. All rights reserved.
//

#import "Manager.h"
static Manager *manager = nil;
@implementation Manager
+ (Manager *)sharedManager {
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        manager = [[Manager alloc] init];
    });
    return manager;
}


@end
