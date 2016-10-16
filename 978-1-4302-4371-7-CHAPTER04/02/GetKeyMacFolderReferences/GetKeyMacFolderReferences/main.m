//
//  main.m
//  GetKeyMacFolderReferences
//
//  Created by Matthew Campbell on 1/23/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
        
        NSLog(@"bundlePath = %@", bundlePath);

        NSString *directoryPathName = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 
                                                            NSAllDomainsMask,
                                                            YES) lastObject];
        
        NSLog(@"directoryPathName = %@", directoryPathName);
        
    }
    return 0;
}

