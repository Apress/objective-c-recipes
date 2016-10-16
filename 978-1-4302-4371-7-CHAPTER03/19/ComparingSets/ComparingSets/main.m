//
//  main.m
//  ComparingSets
//
//  Created by Matthew Campbell on 1/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSSet *set1 = [NSSet setWithObjects:@"A", @"B", @"C", @"D", @"E", nil];
        
        NSSet *set2 = [NSSet setWithObjects:@"D", @"E", @"F", @"G", @"H", nil];
        
        NSLog(@"set1 contains:%@", set1);
        
        NSLog(@"set2 contains:%@", set2);
        
        BOOL setsIntersect = [set1 intersectsSet:set2];
        
        BOOL set2IsSubset = [set2 isSubsetOfSet:set1];
        
        BOOL set1IsEqualToSet2 = [set1 isEqualToSet:set2];
        
        BOOL set1ContainsD = [set1 containsObject:@"D"];
        
        NSLog(@"setsIntersect = %i, set2IsSubset = %i, set1IsEqualToSet2 = %i, set1ContainsD = %i", 
              setsIntersect, set2IsSubset, set1IsEqualToSet2, set1ContainsD);
        
        
    }
    return 0;
}

