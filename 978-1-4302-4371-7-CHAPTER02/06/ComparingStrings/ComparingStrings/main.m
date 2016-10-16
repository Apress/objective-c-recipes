//
//  main.m
//  ComparingStrings
//
//  Created by Matthew Campbell on 1/3/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *myString1 = @"A";
        NSString *myString2 = @"B";
        NSString *myString3 = @"A";
        
        BOOL isEqual = [myString1 isEqualToString:myString2];
        
        if(isEqual)
            NSLog(@"%@ is equal to %@", myString1, myString2);
        else
            NSLog(@"%@ is not equal to %@", myString1, myString2);
            
        if([myString1 isEqualToString:myString2])
            NSLog(@"%@ is equal to %@", myString1, myString2);
        else
            NSLog(@"%@ is not equal to %@", myString1, myString2);
        
        if([myString1 isEqualToString:myString3])
            NSLog(@"%@ is equal to %@", myString1, myString3);
        else
            NSLog(@"%@ is not equal to %@", myString1, myString3);
        
        NSString *name = @"Mr. John Smith, MD";
        
        BOOL hasMrPrefix = [name hasPrefix:@"Mr"];
        
        if(hasMrPrefix)
            NSLog(@"%@ has the Mr prefix", name);
        else
            NSLog(@"%@ doesn't have the Mr prefix", name);
        
        BOOL hasMDSuffix = [name hasSuffix:@"MD"];
        
        if(hasMDSuffix)
            NSLog(@"%@ has the MD suffix", name);
        else
            NSLog(@"%@ doesn't have the MD suffix", name);
        
        NSString *alphabet = @"ABCDEFGHIJKLMONPQRSTUVWXYZ";
        
        NSRange range = NSMakeRange(2, 3);
        
        BOOL lettersInRange = [[alphabet substringWithRange:range] isEqualToString:@"CDE"];
        
        if(lettersInRange)
            NSLog(@"The letters CDE are in alphabet starting at position 2");
        else
            NSLog(@"The letters CDE aren't in alphabet starting at position 2");
        
        
    }
    return 0;
}

