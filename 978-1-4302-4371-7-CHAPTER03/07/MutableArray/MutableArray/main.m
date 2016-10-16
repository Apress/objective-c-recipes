//
//  main.m
//  MutableArray
//
//  Created by Matthew Campbell on 1/11/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *listOfLetters = [[NSMutableArray alloc] init];
        
        [listOfLetters addObject:@"A"];
        
        [listOfLetters addObject:@"B"];
        
        [listOfLetters addObject:@"C"];
        
        NSLog(@"OBJECTS ADDED TO ARRAY: %@", listOfLetters);
        
        [listOfLetters insertObject:@"a"
                            atIndex:0];
        
        NSLog(@"OBJECT 'a' INSERTED INTO ARRAY: %@", listOfLetters);

        [listOfLetters replaceObjectAtIndex:3
                                 withObject:@"c"];
        
        NSLog(@"OBJECT 'c' REPLACED 'C' IN ARRAY: %@", listOfLetters);
        
        [listOfLetters exchangeObjectAtIndex:0
                           withObjectAtIndex:2];
        
        NSLog(@"OBJECT AT INDEX 1 EXCHANGED WITH OBJECT AT INDEX 2 IN ARRAY: %@", listOfLetters);
        
        [listOfLetters removeObject:@"A"];
        
         NSLog(@"OBJECT 'A' REMOVED IN ARRAY: %@", listOfLetters);
        
        [listOfLetters removeObjectAtIndex:1];
        
         NSLog(@"OBJECT AT INDEX 1 REMOVED IN ARRAY: %@", listOfLetters);
        
        [listOfLetters removeLastObject];
        
         NSLog(@"LAST OBJECT REMOVED IN ARRAY: %@", listOfLetters);
        
        [listOfLetters removeAllObjects];
        
         NSLog(@"ALL OBJECTS REMOVED IN ARRAY: %@", listOfLetters);
        
    }
    return 0;
}

