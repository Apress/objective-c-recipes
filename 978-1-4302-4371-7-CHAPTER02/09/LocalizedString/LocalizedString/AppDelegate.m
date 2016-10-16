//
//  AppDelegate.m
//  LocalizedString
//
//  Created by Matthew Campbell on 1/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    
    NSString *localizedString = NSLocalizedString(@"helloworld", @"Hello world in localized languages");
    
    NSLog(@"%@", localizedString);

}

@end
