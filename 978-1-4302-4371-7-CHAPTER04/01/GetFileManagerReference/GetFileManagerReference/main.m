//
//  main.m
//  GetFileManagerReference
//
//  Created by Matthew Campbell on 1/23/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSString *currentDirectoryPath = [fileManager currentDirectoryPath];
        
        NSLog(@"currentDirectoryPath = %@", currentDirectoryPath);
        
        [fileManager changeCurrentDirectoryPath:@"/Users/Shared"];
        
        currentDirectoryPath = [fileManager currentDirectoryPath];
        
        NSLog(@"currentDirectoryPath = %@", currentDirectoryPath);
        
        NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
        
        NSLog(@"currentDirectoryPath = %@", bundlePath);
        
    }
    return 0;
}

