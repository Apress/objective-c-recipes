//
//  AppDelegate.m
//  R2
//
//  Created by Matthew Campbell on 3/7/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    NSString *requestString = @"http://www.howtomakeiphoneapps.com/feed/";
    NSURL *requestURL = [NSURL URLWithString:requestString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:requestURL
                                                  cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                              timeoutInterval:10];
    
    NSOperationQueue *backgroundQueue =[[NSOperationQueue alloc] init];
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:backgroundQueue
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                               
                               if(!error){
                                   NSString *requestResults = [[NSString alloc] initWithData:data
                                                                                    encoding:NSStringEncodingConversionAllowLossy];
                                   
                                   NSLog(@"requestResults=%@", requestResults);
                               }
                               else
                                   NSLog(@"error=%@", error);
                               
                               
                           }];
}

@end
