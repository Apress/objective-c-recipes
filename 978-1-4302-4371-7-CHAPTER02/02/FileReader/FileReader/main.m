//
//  main.m
//  FileReader
//
//  Created by Matthew Campbell on 12/31/11.
//  Copyright (c) 2011 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *filePathName = @"/Users/Shared/textfile.txt";
        NSError *fileError;
        NSString *textFileContents = [NSString stringWithContentsOfFile:filePathName 
                                                                encoding:NSASCIIStringEncoding 
                                                                   error:&fileError];
        if(fileError.code == 0)
            NSLog(@"textfile.txt contents: %@", textFileContents);
        else
            NSLog(@"error(%ld): %@", fileError.code, fileError.description);

        
        /*
        NSError *urlError;
        NSURL *url = [NSURL URLWithString:@"http://howtomakeiphoneapps.com/"];
        NSString *urlContents = [NSString stringWithContentsOfURL:url
                                                         encoding:NSASCIIStringEncoding
                                                            error:&urlError];
        if(urlError.code == 0)
            NSLog(@"textfile.txt contents: %@", urlContents);
        else
            NSLog(@"error(%ld): %@", urlError.code, urlError.description);
*/
    }
    
    return 0;
}

