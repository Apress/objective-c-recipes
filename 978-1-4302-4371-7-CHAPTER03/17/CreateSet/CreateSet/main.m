//
//  main.m
//  CreateSet
//
//  Created by Matthew Campbell on 1/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSSet *set = [NSSet setWithObjects:@"Hello World", @"Bonjour tout le monde", @"Hola Mundo", nil];
        
        NSLog(@"set: %@",set);
        
    }
    return 0;
}

