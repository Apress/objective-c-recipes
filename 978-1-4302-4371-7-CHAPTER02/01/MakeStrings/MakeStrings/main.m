//
//  main.m
//  MakeStrings
//
//  Created by Matthew Campbell on 12/28/11.
//  Copyright (c) 2011 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *myString1 = @"My String One";
        NSLog(@"myString1 = %@", myString1);
        
        NSString *myString2 = [NSString stringWithUTF8String:"My String Two"];
        NSLog(@"myString2 = %@", myString2);
        
        NSString *myString3 = [[NSString alloc] initWithUTF8String:"My String Three"];
        NSLog(@"myString3 = %@", myString3);
        
        int number = 4;
        NSString *myString4 = [NSString stringWithFormat:@"My String %i", number];
        NSLog(@"myString4 = %@", myString4);
                               
        
    }
    return 0;
}

