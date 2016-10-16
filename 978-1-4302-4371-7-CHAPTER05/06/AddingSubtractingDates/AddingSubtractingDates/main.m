//
//  main.m
//  AddingSubtractingDates
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
        
        NSLog(@"Valentine's Day = %@", valentinesDay);
        
        NSDateComponents *weekBeforeDateComponents = [[NSDateComponents alloc] init];
        
        weekBeforeDateComponents.week = -1;
        
        NSDate *vDayShoppingDay = [[NSCalendar currentCalendar] dateByAddingComponents:weekBeforeDateComponents
                                                                                toDate:valentinesDay
                                                                               options:0];
        NSLog(@"Shop for Valentine's Day by %@", vDayShoppingDay);
        
    }
    return 0;
}

