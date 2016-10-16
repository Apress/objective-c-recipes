//
//  main.m
//  Numbers
//
//  Created by Matthew Campbell on 1/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        float fNumber = 12;
        
        NSString *floatToString = [NSString stringWithFormat:@"%f", fNumber];
        
        NSLog(@"floatToString = %@", floatToString);
        
        NSNumber *number = [NSNumber numberWithFloat:30];
        
        NSString *numberToString = [number stringValue];
        
        NSLog(@"numberToString = %@", numberToString);
        
    }
    return 0;
}

