//
//  main.m
//  GetFilesFromDirectory
//
//  Created by Matthew Campbell on 1/25/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSString *sharedDirectory = @"/Users/Shared";
        
        NSError *error = nil;
        
        NSArray *listOfFiles = [fileManager contentsOfDirectoryAtPath:sharedDirectory
                                                                error:&error];
        
        if(!error)
            NSLog(@"Contents of shared directory: %@", listOfFiles);
        
        NSArray *listOfSubPaths = [fileManager subpathsOfDirectoryAtPath:sharedDirectory
                                                                   error:&error];
        
        if(!error)
            NSLog(@"Sub Paths of shared directory:: %@", listOfSubPaths);
        
    }
    return 0;
}

