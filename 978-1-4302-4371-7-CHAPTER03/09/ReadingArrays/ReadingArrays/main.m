//
//  main.m
//  ReadingArrays
//
//  Created by Matthew Campbell on 1/11/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
                
        NSString *filePathName = @"/Users/Shared/array.txt";
        
        NSArray *listOfObjects = [[NSArray alloc] initWithContentsOfFile:filePathName];
        
        NSLog(@"%@", listOfObjects);
        
    }
    return 0;
}

