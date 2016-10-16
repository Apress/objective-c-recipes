//
//  main.m
//  WritingStrings
//
//  Created by Matthew Campbell on 1/3/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]){

    @autoreleasepool {
        NSString *filePathName = @"/Users/Shared/textfile.txt";
        NSError *fileError;
        NSString *textFileContents = @"Content generated from a Mac program.";
        
        [textFileContents writeToFile:filePathName
                           atomically:YES
                             encoding:NSStringEncodingConversionAllowLossy
                                error:&fileError];
        
        if(fileError.code == 0)
            NSLog(@"textfile.txt was written successfully with these contents: %@", textFileContents);
        else
            NSLog(@"error(%ld): %@", fileError.code, fileError.description);

        
    }
    return 0;
}

