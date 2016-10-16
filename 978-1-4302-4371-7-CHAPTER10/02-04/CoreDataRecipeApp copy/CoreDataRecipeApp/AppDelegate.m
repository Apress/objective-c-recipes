//
//  AppDelegate.m
//  CoreDataRecipeApp
//
//  Created by Matthew Campbell on 4/6/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    AppModel *appModel = [[AppModel alloc] init];
    
    Project *project = [[appModel listOfProjects] lastObject];
    
    NSLog(@"project.name = %@", project.name);
    NSLog(@"project.descrip = %@", project.descrip);
    NSLog(@"project.dueDate = %@", project.dueDate);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end