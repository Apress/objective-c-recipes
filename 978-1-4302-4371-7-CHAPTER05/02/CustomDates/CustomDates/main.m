//
//  main.m
//  CustomDates
//
//  Created by Matthew Campbell on 1/18/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
        dateComponents.year = 2007;
        dateComponents.month = 6;
        dateComponents.day = 29;
        dateComponents.hour = 12;
        dateComponents.minute = 01;
        dateComponents.second = 31;
        dateComponents.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"PDT"];
        
        NSDate *iPhoneReleaseDate = [[NSCalendar currentCalendar] dateFromComponents:dateComponents];
        
        NSLog(@"The original iPhone went on sale: %@", iPhoneReleaseDate);
        
    }
    return 0;
}

