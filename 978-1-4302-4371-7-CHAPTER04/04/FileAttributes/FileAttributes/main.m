//
//  main.m
//  FileAttributes
//
//  Created by Matthew Campbell on 1/24/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSString *filePathName = @"/Users/Shared/textfile.txt";
        
        NSError *error = nil;
        
        NSDictionary *fileAttributes = [fileManager attributesOfItemAtPath:filePathName
                                                                     error:&error];
        
        if(!error){
            
            NSDate *dateFileCreated = [fileAttributes valueForKey:NSFileCreationDate];
            
            NSString *fileType = [fileAttributes valueForKey:NSFileType];
            
            NSLog(@"This %@ file was created on %@ ",fileType, dateFileCreated);
            
        }
        
    }
    return 0;
}

