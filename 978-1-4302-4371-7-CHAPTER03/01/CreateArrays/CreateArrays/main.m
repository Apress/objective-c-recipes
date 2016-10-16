//
//  main.m
//  CreateArrays
//
//  Created by Matthew Campbell on 1/9/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *listOfLetters1 = [NSArray arrayWithObjects:@"A", @"B", @"C", nil];
        
        NSLog(@"listOfLetters1 = %@", listOfLetters1);
        
        NSNumber *number1 = [NSNumber numberWithInt:1];
        NSNumber *number2 = [NSNumber numberWithInt:2];
        NSNumber *number3 = [NSNumber numberWithInt:3];
        
        NSMutableArray *listOfNumbers1 = [[NSMutableArray alloc] initWithObjects:number1, number2, number3, nil];
        
        NSLog(@"listOfNumbers1 = %@", listOfNumbers1);
        
        id list[3];
        list[0] = @"D";
        list[1] = @"E";
        list[2] = @"F";
        
        NSMutableArray *listOfLetters2 = [[NSMutableArray alloc] initWithObjects:list count:3];
        
        NSLog(@"listOfLetters2 = %@", listOfLetters2);
        
    }
    return 0;
}

