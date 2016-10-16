//
//  MyFileManager.m
//  DelegationWithNSFileManager
//
//  Created by Matthew Campbell on 1/26/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "MyFileManager.h"

@implementation MyFileManager
@synthesize fileManager;

- (id)init {
    self = [super init];
    if (self) {
        self.fileManager = [[NSFileManager alloc] init];
        self.fileManager.delegate = self;
    }
    return self;
}

- (BOOL)fileManager:(NSFileManager *)fileManager shouldCopyItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath{
    
    if([dstPath hasPrefix:@"/Users/Shared/Book/Protected"]){
        
        NSLog(@"We cannot copy files into the protected folder and so this file was not copied");
        
        return NO;
    }
    else{
        
        NSLog(@"We just copied a file successfully");
        
        return YES;
    }
}

@end