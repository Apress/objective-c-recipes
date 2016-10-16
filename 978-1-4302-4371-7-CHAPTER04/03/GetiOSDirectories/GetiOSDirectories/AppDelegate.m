//
//  AppDelegate.m
//  GetiOSDirectories
//
//  Created by Matthew Campbell on 1/24/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    //app bundle not backed up, readonly
    NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
    
    NSLog(@"bundlePath = %@", bundlePath);
    
    //documents directory is backed up
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    NSLog(@"documentsDirectory = %@", documentsDirectory);
    
    //Library directory is backed up
    NSString *libraryDirectory = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) lastObject];
    
    NSLog(@"libraryDirectory = %@", libraryDirectory);
    
    //Cache directory is not backe up
    NSString *cacheDirectory = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    
    NSLog(@"cacheDirectory = %@", cacheDirectory);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
