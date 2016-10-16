//
//  main.m
//  QueryArray
//
//  Created by Matthew Campbell on 1/10/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        //Instantiate Person objects and add them all to an array:        
        Person *p1 = [[Person alloc] initWithFirstName:@"Rebecca"
                                              lastName:@"Smith"
                                                andAge:33];
        Person *p2 = [[Person alloc] initWithFirstName:@"Albert"
                                              lastName:@"Case"
                                                andAge:24];
        Person *p3 = [[Person alloc] initWithFirstName:@"Anton"
                                              lastName:@"Belfey"
                                                andAge:45];
        Person *p4 = [[Person alloc] initWithFirstName:@"Tom"
                                              lastName:@"Gun"
                                                andAge:17];
        Person *p5 = [[Person alloc] initWithFirstName:@"Cindy"
                                              lastName:@"Lou"
                                                andAge:6];
        Person *p6 = [[Person alloc] initWithFirstName:@"Yanno"
                                              lastName:@"Dirst"
                                                andAge:76];
        
        NSArray *listOfObjects = [NSArray arrayWithObjects:p1, p2, p3, p4, p5, p6,  nil];
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age > 30"];
        
        NSArray *arraySubset = [listOfObjects filteredArrayUsingPredicate:predicate];
        
        NSLog(@"PRINT OUT ARRAY SUBSET");
        
        [arraySubset makeObjectsPerformSelector:@selector(reportState)];
        
        
    }
    return 0;
}

