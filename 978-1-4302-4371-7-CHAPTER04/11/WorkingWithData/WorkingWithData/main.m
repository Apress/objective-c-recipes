//
//  main.m
//  WorkingWithData
//
//  Created by Matthew Campbell on 1/27/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSUInteger length = 3;
        
        char bytes1[length];
        bytes1[0] = 'A';
        bytes1[1] = 'B';
        bytes1[2] = 'C';
        
        for (int i=0;i<sizeof(bytes1);i++)
            NSLog(@"bytes1[%i] = %c", i, bytes1[i]);
        
        char bytes2[length];
        bytes2[0] = 'D';
        bytes2[1] = 'E';
        bytes2[2] = 'F';
        
        for (int i=0;i<sizeof(bytes2);i++)
            NSLog(@"bytes2[%i] = %c", i, bytes2[i]);
        
        NSMutableData *mutableData = [[NSMutableData alloc] init];
        
        [mutableData appendBytes:bytes1
                          length:length];
        
        [mutableData appendBytes:bytes2
                          length:length];
        
        NSLog(@"mutableData = %@", mutableData);
        
        char *bytesFromData = (char *)[mutableData bytes];
        
        for (int i=0;i<length*2;i++)
            NSLog(@"bytesFromData[%i] = %c", i, bytesFromData[i]);
        
        NSError *error = nil;
        
        BOOL dataSaved = [mutableData writeToFile:@"/Users/Shared/Book/datadump.txt"
                                          options:NSDataWritingAtomic
                                            error:&error];
        
        if(dataSaved)
            NSLog(@"mutableData successfully wrote contents to file system");
        else
            NSLog(@"mutableData was unsuccesful in writing out data because of %@", error);
        
    }
    return 0;
}

