//
//  AppDelegate.m
//  WritingTextFilesiOS
//
//  Created by Matthew Campbell on 1/3/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    NSString *filePathName = [NSString stringWithFormat:@"%@/textfile.txt", documentsDirectory];
    
    NSError *fileError;
    
    NSString *textFileContents = @"Content generated from an iOS app.";
    
    [textFileContents writeToFile:filePathName
                       atomically:YES
                         encoding:NSStringEncodingConversionAllowLossy
                            error:&fileError];
    
    if(fileError.code == 0)
        NSLog(@"textfile.txt was written successfully with these contents: %@", textFileContents);
    else
        NSLog(@"error(%d): %@", fileError.code, fileError.description);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end