//
//  main.m
//  ManipulatingSets
//
//  Created by Matthew Campbell on 1/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableSet *set = [[NSMutableSet alloc] init];
        
        [set addObject:@"Hello World"];
        
        [set addObject:@"Bonjour tout le monde"];
        
        [set addObject:@"Hola Mundo"];
        
        NSLog(@"Objects added to set:%@", set);
        
        [set removeObject:@"Bonjour tout le monde"];
        
        NSLog(@"Object removed from set:%@", set);
        
        [set removeAllObjects];
        
        NSLog(@"All objects removed from set:%@", set);
        
    }
    return 0;
}

