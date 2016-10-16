//
//  AppDelegate.m
//  ReadingStrings
//
//  Created by Matthew Campbell on 1/3/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *bundlePathName = [[NSBundle mainBundle] resourcePath];
    
    NSString *filePathName = [NSString stringWithFormat:@"%@/textfile.txt", bundlePathName];
    
    NSError *fileError;
    
    NSString *textFileContents = [NSString stringWithContentsOfFile:filePathName 
                                                           encoding:NSASCIIStringEncoding 
                                                              error:&fileError];
    
    if(fileError.code == 0)
        NSLog(@"textfile.txt contents: %@", textFileContents);
    else
        NSLog(@"error(%d): %@", fileError.code, fileError.description);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
