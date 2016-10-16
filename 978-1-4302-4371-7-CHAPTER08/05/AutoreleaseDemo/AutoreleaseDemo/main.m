//
//  main.m
//  AutoreleaseDemo
//
//  Created by Matthew Campbell on 3/16/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Car.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSDate *today = [NSDate date];
        NSLog(@"Today's date is %@", today);
        [today retain];
        
        //do other things...
        
        [today release];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
