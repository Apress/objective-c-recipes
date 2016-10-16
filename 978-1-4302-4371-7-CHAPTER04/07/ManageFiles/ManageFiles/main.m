//
//  main.m
//  ManageFiles
//
//  Created by Matthew Campbell on 1/25/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSURL *url = [NSURL URLWithString:@"http://howtomakeiphoneapps.com/wp-content/uploads/2012/01/apples-oranges.jpg"];
        
        NSData *dataObject = [NSData dataWithContentsOfURL:url];
        
        NSString *newFile = @"/Users/Shared/apples-oranges.jpg";
        
        BOOL fileCreated = [fileManager createFileAtPath:newFile
                                                contents:dataObject
                                              attributes:nil];
        
        NSLog(@"fileCreated = %i with no error", fileCreated);
        
        NSError *error = nil;
        
        NSString *fileMovedTo = @"/Users/Shared/apples-oranges-moved.jpg";
        
        BOOL fileMoved = [fileManager moveItemAtPath:newFile
                                                   toPath:fileMovedTo
                                                    error:&error];
        
        if(!error)
            NSLog(@"fileMoved = %i with no error", fileMoved);
        else
            NSLog(@"fileMoved = %i with error %@", fileMoved, error);
        
        NSString *fileToCopy = @"/Users/Shared/apples-oranges-moved.jpg";
        NSString *copiedFileName = @"/Users/Shared/apples-oranges-backup-copy.jpg";
        
        BOOL fileCopied = [fileManager copyItemAtPath:fileToCopy
                                               toPath:copiedFileName
                                                error:&error];
        
        if(!error)
            NSLog(@"fileCopied = %i with no error", fileCopied);
        else
            NSLog(@"fileCopied = %i with error %@", fileCopied, error);
        
        
        
        NSString *fileToRemove = @"/Users/Shared/apples-oranges-moved.jpg";
        
        BOOL fileRemoved =[fileManager removeItemAtPath:fileToRemove
                                                       error:&error];
        
        if(!error)
            NSLog(@"fileRemoved = %i with no error", fileRemoved);
        else
            NSLog(@"fileRemoved = %i with error %@", fileRemoved, error);
        
        
    }
    return 0;
}

