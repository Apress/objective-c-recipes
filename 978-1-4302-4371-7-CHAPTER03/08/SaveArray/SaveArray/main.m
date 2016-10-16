//
//  main.m
//  SaveArray
//
//  Created by Matthew Campbell on 1/11/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *listOfObjects = [NSArray arrayWithObjects:@"A", @"B", @"C", [NSNumber numberWithInt:1], [NSNumber numberWithInt:2], [NSNumber numberWithInt:3],  nil];
        
        NSString *filePathName = @"/Users/Shared/array.txt";
        
        [listOfObjects writeToFile:filePathName
                        atomically:YES];
        
    }
    
    return 0;
}

