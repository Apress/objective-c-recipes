//
//  main.m
//  CheckFileStatus
//
//  Created by Matthew Campbell on 1/26/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSString *filePathName = @"/Users/Shared/textfile.txt";
        
        BOOL fileExists = [fileManager fileExistsAtPath:filePathName];
        
        if(fileExists)
            NSLog(@"%@ exists", filePathName);
        else
            NSLog(@"%@ doesn't exist", filePathName);
        
        BOOL fileIsReadable = [fileManager isReadableFileAtPath:filePathName];
        
        if(fileIsReadable)
            NSLog(@"%@ is readable", filePathName);
        else
            NSLog(@"%@ isn't readable", filePathName);
        
        BOOL fileIsWriteable = [fileManager isWritableFileAtPath:filePathName];
        
        if(fileIsWriteable)
            NSLog(@"%@ is writable", filePathName);
        else
            NSLog(@"%@ isn't writable", filePathName);
        
        BOOL fileIsExecutable = [fileManager isExecutableFileAtPath:filePathName];
        
        if(fileIsExecutable)
            NSLog(@"%@ is an executable", filePathName);
        else
            NSLog(@"%@ isn't an executable", filePathName);
        
        BOOL fileIsDeleteable = [fileManager isDeletableFileAtPath:filePathName];
        
        if(fileIsDeleteable)
            NSLog(@"%@ is deletable", filePathName);
        else
            NSLog(@"%@ isn't an deletable", filePathName);
        
    }
    return 0;
}