//
//  main.m
//  MutableStrings
//
//  Created by Matthew Campbell on 1/4/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableString *myString = [[NSMutableString alloc] initWithCapacity:26];

        [myString setString:@"ABCDEFGHIJKLMONPQRSTUVWXYZ"];
        
        NSLog(@"%@", myString);
        
        [myString appendString:@", 0123456789"];
        
        NSLog(@"%@", myString);
        
        [myString insertString:@"abcdefg, "
                       atIndex:0];
        
        NSLog(@"%@", myString);
        
        NSRange range = NSMakeRange(9, 3);
        
        [myString deleteCharactersInRange:range];
        
        NSLog(@"%@", myString);
        NSRange rangeOfString = [myString rangeOfString:myString];
        
        [myString replaceOccurrencesOfString:@", "
                                  withString:@"|"
                                     options:NSCaseInsensitiveSearch
                                       range:rangeOfString];
        
        NSLog(@"%@", myString);
        

        NSRange rangeToReplace = NSMakeRange(0, 4);
        
        [myString replaceCharactersInRange:rangeToReplace
                                withString:@"MORE"];
        
        NSLog(@"%@", myString);

    }
    
    return 0;
}

