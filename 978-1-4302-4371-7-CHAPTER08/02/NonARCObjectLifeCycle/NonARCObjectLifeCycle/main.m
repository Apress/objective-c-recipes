//
//  main.m
//  NonARCObjectLifeCycle
//
//  Created by Matthew Campbell on 3/15/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        NSObject *obj = [[NSObject alloc] init];
        
        NSLog(@"obj's description is %@", [obj description]);
        
        [obj retain];
        
        [obj release];
        
        [obj release];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
