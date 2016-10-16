//
//  main.m
//  DelegationWithNSFileManager
//
//  Created by Matthew Campbell on 1/26/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyFileManager.h"

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        MyFileManager *myFileManager = [[MyFileManager alloc] init];
        
        NSString *protectedDirectory = @"/Users/Shared/Book/Protected";
        
        NSString *cacheDirectory = @"/Users/Shared/Book/Cache";
        
        NSString *fileSource = @"/Users/Shared/Book/textfile.txt";
        
        NSString *fileDestination1 = @"/Users/Shared/Book/Protected/textfile.txt";
        
        NSString *fileDestination2 = @"/Users/Shared/Book/Cache/textfile.txt";
        
        NSError *error = nil;
        
        NSArray *listOfFiles;
        
        NSLog(@"Look at directories BEFORE attempting to copy");
        
        listOfFiles = [myFileManager.fileManager contentsOfDirectoryAtPath:protectedDirectory
                                                                     error:&error];
        
        NSLog(@"List of files in protected directory (before):%@", listOfFiles);
        
        listOfFiles = [myFileManager.fileManager contentsOfDirectoryAtPath:cacheDirectory
                                                                     error:&error];
        
        NSLog(@"List of files in cache directory (before):%@", listOfFiles);
        
        
        //Attempt to copy into protected folder:
        BOOL fileCopied1 = [myFileManager.fileManager copyItemAtPath:fileSource
                                                              toPath:fileDestination1
                                                               error:&error];
        
        if(error)
            NSLog(@"There was an error, %@.  fileCopied1 = %i", error, fileCopied1);
        
        //Attempt to copy into cache folder:
        BOOL fileCopied2 =  [myFileManager.fileManager copyItemAtPath:fileSource
                                                               toPath:fileDestination2
                                                                error:&error];
        
        if(error)
            NSLog(@"There was an error, %@.  fileCopied2 = %i", error, fileCopied2);
        
        NSLog(@"Look at directories AFTER attempting to copy");
        
        listOfFiles = [myFileManager.fileManager contentsOfDirectoryAtPath:protectedDirectory
                                                                     error:&error];
        
        NSLog(@"List of files in protected directory (after):%@", listOfFiles);
        
        listOfFiles = [myFileManager.fileManager contentsOfDirectoryAtPath:cacheDirectory
                                                                     error:&error];
        
        NSLog(@"List of files in cache directory (after):%@", listOfFiles);
        
        
    }
    return 0;
}

