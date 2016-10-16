//
//  main.m
//  DownloadFile
//
//  Created by Matthew Campbell on 3/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]){
    @autoreleasepool {
        NSURL *remoteTextFileURL = [NSURL URLWithString:@"http://howtomakeiphoneapps.com/wp-content/uploads/2012/03/objective-c-recipes-example-file.txt"];
        NSData *remoteTextFileData = [NSData dataWithContentsOfURL:remoteTextFileURL];
        [remoteTextFileData writeToFile:@"/Users/Shared/objective-c-recipes-example-file.txt"
                             atomically:YES];
        
    }
    return 0;
}

