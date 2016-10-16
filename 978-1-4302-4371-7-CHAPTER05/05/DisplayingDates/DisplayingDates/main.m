//
//  main.m
//  DisplayingDates
//
//  Created by Matthew Campbell on 1/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *dateString = @"02/14/2012";
        
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        
        df.dateFormat = @"MM/dd/yyyy";
        
        NSDate *valentinesDay = [df dateFromString:dateString];
        
        NSLog(@"Unformatted Valentine's Day = %@", valentinesDay);
        
        NSLog(@"Formatted Valentine's Day = %@", [df stringFromDate:valentinesDay]);
        
        df.dateFormat = @"EEEE, MMMM d";
        
        NSLog(@"Another Formatted Valentine's Day = %@", [df stringFromDate:valentinesDay]);
        
    }
    return 0;
}

