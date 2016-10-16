//
//  main.m
//  ManagingDirectories
//
//  Created by Matthew Campbell on 1/25/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSString *newDirectory = @"/Users/Shared/NewDirectory1/NewSubDirectory1";
        
        NSError *error = nil;
        
        BOOL directoryCreated = [fileManager createDirectoryAtPath:newDirectory
                                       withIntermediateDirectories:YES
                                                        attributes:nil
                                                             error:&error];
        if(!error)
            NSLog(@"directoryCreated = %i with no error", directoryCreated);
        else
            NSLog(@"directoryCreated = %i with error %@", directoryCreated, error);
        
        
        NSString *directoryMovedTo = @"/Users/Shared/NewSubDirectory1";
        
        BOOL directoryMoved = [fileManager moveItemAtPath:newDirectory
                                                   toPath:directoryMovedTo
                                                    error:&error];
        
        if(!error)
            NSLog(@"directoryMoved = %i with no error", directoryMoved);
        else
            NSLog(@"directoryMoved = %i with error %@", directoryMoved, error);
        
        
        NSString *directoryToRemove = @"/Users/Shared/NewDirectory1";
        
        BOOL directoryRemoved =[fileManager removeItemAtPath:directoryToRemove
                                                       error:&error];
        
        if(!error)
            NSLog(@"directoryRemoved = %i with no error", directoryRemoved);
        else
            NSLog(@"directoryRemoved = %i with error %@", directoryRemoved, error);
        
        
        NSString *directoryToCopy = @"/Users/Shared/NewSubDirectory1";
        NSString *directoryToCopyTo = @"/Users/Shared/CopiedDirectory";
        
        BOOL directoryCopied =[fileManager copyItemAtPath:directoryToCopy
                                                   toPath:directoryToCopyTo
                                                    error:&error];
        
        if(!error)
            NSLog(@"directoryCopied = %i with no error", directoryCopied);
        else
            NSLog(@"directoryCopied = %i with error %@", directoryCopied, error);
        
    }
    return 0;
}

