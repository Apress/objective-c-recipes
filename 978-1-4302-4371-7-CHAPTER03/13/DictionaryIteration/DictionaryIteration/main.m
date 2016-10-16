//
//  main.m
//  DictionaryIteration
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

        for (NSString *s in [dictionary allValues]) {
            NSLog(@"value: %@", s);
        }
        
        for (NSString *s in [dictionary allKeys]) {
            NSLog(@"key: %@", s);
        }
        
        [dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"key = %@ and obj = %@", key, obj);
        }];
        
        
        
    }
    return 0;
}

