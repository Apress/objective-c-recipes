//
//  main.m
//  StringsToNumbers
//
//  Created by Matthew Campbell on 1/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *aFloatValue = @"12.50";
        
        float f = [aFloatValue floatValue];
    
        float result = f * 2 + 45;
        
        NSLog(@"f = %f and result = %f", f, result);
        
        NSNumber *aFloatNumber = [NSNumber numberWithFloat:[aFloatValue floatValue]];
        
        NSLog(@"aFloatNumber = %@", aFloatNumber);
        
    }
    return 0;
}

