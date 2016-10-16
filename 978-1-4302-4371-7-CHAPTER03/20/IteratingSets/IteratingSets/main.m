//
//  main.m
//  IteratingSets
//
//  Created by Matthew Campbell on 1/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSSet *set = [NSSet setWithObjects:@"Hello World", @"Bonjour tout le monde", @"Hola Mundo", nil];
        
        for (NSString *s in [set allObjects]) {
            NSLog(@"value: %@", s);
        }
        
        [set enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
            NSLog(@"obj = %@", obj);
        }];
        
        [set makeObjectsPerformSelector:@selector(description)];
        
    }
    return 0;
}

