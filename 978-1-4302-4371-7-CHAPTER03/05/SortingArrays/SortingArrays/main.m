//
//  main.m
//  SortingArrays
//
//  Created by Matthew Campbell on 1/9/12.
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
        
        NSLog(@"PRINT OUT ARRAY UNSORTED");
        
        [listOfObjects makeObjectsPerformSelector:@selector(reportState)];
        
        //Create three sort descriptors and add to an array:
        NSSortDescriptor *sd1 = [NSSortDescriptor sortDescriptorWithKey:@"age"
                                                              ascending:YES];
        
        NSSortDescriptor *sd2 = [NSSortDescriptor sortDescriptorWithKey:@"lastName"
                                                              ascending:YES];
        
        
        NSSortDescriptor *sd3 = [NSSortDescriptor sortDescriptorWithKey:@"firstName"
                                                              ascending:YES];
        
        NSArray *sdArray1 = [NSArray arrayWithObjects:sd1, sd2, sd3, nil];
        
        NSLog(@"PRINT OUT SORTED ARRAY (AGE,LASTNAME,FIRSTNAME)");
        
        NSArray *sortedArray1 = [listOfObjects sortedArrayUsingDescriptors:sdArray1];
        
        [sortedArray1 makeObjectsPerformSelector:@selector(reportState)];
        
        NSArray *sdArray2 = [NSArray arrayWithObjects:sd2, sd1, sd3, nil];
        
        NSArray *sortedArray2 = [listOfObjects sortedArrayUsingDescriptors:sdArray2];
        
        NSLog(@"PRINT OUT SORTED ARRAY (LASTNAME,FIRSTNAME,AGE)");
        
        [sortedArray2 makeObjectsPerformSelector:@selector(reportState)];

    }
    return 0;
}

