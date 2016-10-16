//
//  main.m
//  ComparingDates
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
        
        NSDate *todaysDate = [NSDate date];
        
        NSLog(@"Today's date is: %@", todaysDate);
        
        if([todaysDate isEqualToDate:iPhoneReleaseDate])
            NSLog(@"The iPhone was released today!");
        else
            NSLog(@"The iPhone was released on some other date");
        
        NSDate *earlierDateIs = [todaysDate earlierDate:iPhoneReleaseDate];
        
        NSLog(@"The earlier date is: %@", earlierDateIs);
        
        NSDate *laterDateIs = [todaysDate laterDate:iPhoneReleaseDate];
        
        NSLog(@"The later date is: %@", laterDateIs);
        
        NSTimeInterval timeBetweenDates = [todaysDate timeIntervalSinceDate:iPhoneReleaseDate];
        
        NSLog(@"The iPhone was released %f seconds ago", timeBetweenDates);
        
        NSCalendar *systemCalendar = [NSCalendar currentCalendar];
        
        unsigned int unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit| NSDayCalendarUnit;

        NSDateComponents *dateComparisonComponents = [systemCalendar components:unitFlags
                                                             fromDate:iPhoneReleaseDate
                                                               toDate:todaysDate
                                                              options:NSWrapCalendarComponents];
        
        NSLog(@"The iPhone was released %ld years, %ld months and %ld days ago",
              dateComparisonComponents.year,
              dateComparisonComponents.month,
              dateComparisonComponents.day
              );
        
    }
    return 0;
}

