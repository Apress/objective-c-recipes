//
//  main.m
//  DictionaryCount
//
//  Created by Matthew Campbell on 1/11/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *listOfObjects = [NSArray arrayWithObjects:@"Hello World", @"Bonjour tout le monde", @"Hola Mundo", nil];
        
        NSArray *listOfKeys = [NSArray arrayWithObjects:@"english", @"french", @"spanish", nil];
        
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:listOfObjects
                                                               forKeys:listOfKeys];
        NSUInteger count = dictionary.count;
        
        NSLog(@"The dictionary contains %lu items", count);
        
    }
    return 0;
}

