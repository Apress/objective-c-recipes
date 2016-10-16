//
//  main.m
//  CreateTodaysDate
//
//  Created by Matthew Campbell on 1/18/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *todaysDate = [NSDate date];
        
        NSLog(@"Today's date is %@", todaysDate);
        
        
    }
    return 0;
}

