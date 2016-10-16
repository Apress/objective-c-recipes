//
//  main.m
//  ManipulatingDictionaries
//
//  Created by Matthew Campbell on 1/11/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
        
        [dictionary setObject:@"Hello World"
                       forKey:@"english"];
        
        [dictionary setObject:@"Bonjour tout le monde"
                       forKey:@"french"];
        
        [dictionary setObject:@"Hola Mundo"
                       forKey:@"spanish"];
        
        NSLog(@"OBJECTS ADDED TO DICTIONARY: %@", dictionary);
        
        [dictionary removeObjectForKey:@"french"];
        
        NSLog(@"OBJECT REMOVED FROM DICTIONARY: %@", dictionary);
        
        [dictionary removeAllObjects];
        
        NSLog(@"ALL OBJECTS REMOVED FROM DICTIONARY: %@", dictionary);
        
    }
    return 0;
}

