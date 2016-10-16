//
//  main.m
//  WebService_Bitly_XML
//
//  Created by Matthew Campbell on 3/6/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkShortener.h"

int main(int argc, const char * argv[]){
    @autoreleasepool {
        
        NSString *longURL = @"http://howtomakeiphoneapps.com/how-to-asynchronously-add-web-content-to-uitableview-in-ios/1732/";
        
        LinkShortener *linkShortener = [[LinkShortener alloc] init];
        
        NSString *shortURL = [linkShortener getTheShortURLVersionOfThisLongURL:longURL];
        
        NSLog(@"shortURL = %@", shortURL);
        
        
    }
    return 0;
}

