//
//  main.m
//  SearchingForStrings
//
//  Created by Matthew Campbell on 1/4/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSString *stringToSearch = @"This string is something that you can search.";
        
        NSRange rangeToSearch = [stringToSearch rangeOfString:stringToSearch];
        
        NSRange resultsRange = [stringToSearch rangeOfString:@"something"
                                                     options:NSCaseInsensitiveSearch 
                                                       range:rangeToSearch];
        
        if(resultsRange.location != NSNotFound){
            
            NSLog(@"String found starting at location %lu with a length of %lu",
                  resultsRange.location, resultsRange.length);
            
            NSLog(@"%@", [stringToSearch substringWithRange:resultsRange]);
        }
        else
            NSLog(@"The search didn't turn up any results");
        
    }
    return 0;
}

