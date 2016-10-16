//
//  main.m
//  ChangingFileAttributes
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
        
        NSError *error = nil;
        
        //Get the file attributes so you can compare later on:        
        NSDictionary *fileAttributes = [fileManager attributesOfItemAtPath:filePathName
                                                                     error:&error];
        
        if(!error)
            NSLog(@"%@ file attributes (before): %@",filePathName, fileAttributes);
        
        NSMutableDictionary *attributes = [[NSMutableDictionary alloc] init];
        
        [attributes setObject:[NSDate date] forKey:NSFileModificationDate];
        
        BOOL attributeChanged = [fileManager setAttributes:attributes
                                              ofItemAtPath:filePathName
                                                     error:&error];
        
        if(error)
            NSLog(@"There was an error: %@", error);
        else{
            NSLog(@"attributeChanged = %i", attributeChanged);
            
            //Get the file attributes to see the change:        
            NSDictionary *fileAttributes = [fileManager attributesOfItemAtPath:filePathName
                                                                         error:&error];
            
            if(!error)
                NSLog(@"%@ file attributes (after): %@",filePathName, fileAttributes);
        }
        
    }
    return 0;
}