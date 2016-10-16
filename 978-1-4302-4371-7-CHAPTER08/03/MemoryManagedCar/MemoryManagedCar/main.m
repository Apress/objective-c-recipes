//
//  main.m
//  MemoryManagedCar
//
//  Created by Matthew Campbell on 3/15/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Car.h"

int main(int argc, char *argv[]){
    @autoreleasepool {
        
        [Car writeDescriptionToLogWithThisDate:[NSDate date]];
        
        Car *c = [[Car alloc] init];
        
        c.name = @"New Car Name";
        
        [c writeOutThisCarsState];
        
        [c release];
        
        NSLog(@"%@", c.name);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
