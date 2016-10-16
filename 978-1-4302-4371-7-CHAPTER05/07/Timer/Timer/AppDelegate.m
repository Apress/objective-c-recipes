//
//  AppDelegate.m
//  Timer
//
//  Created by Matthew Campbell on 1/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    
    NSDate *scheduledTime = [NSDate dateWithTimeIntervalSinceNow:10.0];
    
    NSString *customUserObject = @"To demo userInfo";
    
    NSTimer *timer = [[NSTimer alloc] initWithFireDate:scheduledTime
                                              interval:2
                                                target:self
                                              selector:@selector(task:)
                                              userInfo:customUserObject
                                               repeats:YES];
    
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    
    [runLoop addTimer:timer
              forMode:NSDefaultRunLoopMode];
    
    
    
}

-(void)task:(id)sender{
    NSTimer *localTimer = (NSTimer *)sender;
    
    NSLog(@"Schedule task has executed with this user info: %@", [localTimer userInfo]);

}

@end
