//
//  main.m
//  FormattingNumbers
//
//  Created by Matthew Campbell on 1/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber *numberToFormat = [NSNumber numberWithFloat:9.99];
        
        NSLog(@"numberToFormat = %@", numberToFormat);
        
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        
        numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
        
        NSLog(@"Formatted for currency: %@", [numberFormatter stringFromNumber:numberToFormat]);
        
        numberFormatter.numberStyle = NSNumberFormatterSpellOutStyle;
        
        NSLog(@"Formatted for spelling out: %@", [numberFormatter stringFromNumber:numberToFormat]);
        
        
    }
    return 0;
}

