//
//  main.m
//  GetCount
//
//  Created by Matthew Campbell on 1/9/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *listOfLetters = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", nil];
        
        NSLog(@"listOfLetters has %lu elements", listOfLetters.count);
        
    }
    return 0;
}

