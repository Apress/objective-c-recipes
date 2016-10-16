//
//  main.m
//  ReferencingObjects
//
//  Created by Matthew Campbell on 1/9/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *listOfLetters = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", nil];
        
        NSString *stringObject1 = [listOfLetters objectAtIndex:0];
        
        NSLog(@"stringObject1 = %@", stringObject1);
        
        NSString *stringObject2 = [listOfLetters lastObject];
        
        NSLog(@"stringObject2 = %@", stringObject2);
        
        NSUInteger position = [listOfLetters indexOfObject:@"B"];
        
        NSLog(@"position = %lu", position);
        

        
    }
    return 0;
}

