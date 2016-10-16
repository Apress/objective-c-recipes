//
//  main.m
//  SetCount
//
//  Created by Matthew Campbell on 1/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSSet *set = [NSSet setWithObjects:@"Hello World", @"Bonjour tout le monde", @"Hola Mundo", nil];
        
        NSUInteger count = set.count;
        
        NSLog(@"The set contains %lu items", count);
        
    }
    return 0;
}

