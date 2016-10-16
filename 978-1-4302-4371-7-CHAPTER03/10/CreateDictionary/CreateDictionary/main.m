//
//  main.m
//  CreateDictionary
//
//  Created by Matthew Campbell on 1/11/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary *dictionary1 = [[NSDictionary alloc] init];
        
        NSArray *listOfObjects = [NSArray arrayWithObjects:@"Hello World", @"Bonjour tout le monde", @"Hola Mundo", nil];
        
        NSArray *listOfKeys = [NSArray arrayWithObjects:@"english", @"french", @"spanish", nil];
        
        NSDictionary *dictionary2 = [NSDictionary dictionaryWithObjects:listOfObjects
                                                                forKeys:listOfKeys];
        
        NSLog(@"dictionary2 = %@", dictionary2);
        
    }
    return 0;
}

