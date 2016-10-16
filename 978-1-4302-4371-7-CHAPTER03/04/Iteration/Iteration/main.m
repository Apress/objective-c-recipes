//
//  main.m
//  Iteration
//
//  Created by Matthew Campbell on 1/9/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableString *string1 = [NSMutableString stringWithString:@"A"];
        NSMutableString *string2 = [NSMutableString stringWithString:@"B"];
        NSMutableString *string3 = [NSMutableString stringWithString:@"C"];
        
        NSArray *listOfObjects = [NSArray arrayWithObjects:string1, string2, string3, nil];
        
        for(NSMutableString *s in listOfObjects){
            NSLog(@"This string in lowercase is %@", [s lowercaseString]);
        }
        
        [listOfObjects makeObjectsPerformSelector:@selector(appendString:)
                                       withObject:@"-MORE"];
        
        [listOfObjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"object(%lu)'s description is %@",idx, [obj description]);
        }];
        
    }
    
    return 0;
}
