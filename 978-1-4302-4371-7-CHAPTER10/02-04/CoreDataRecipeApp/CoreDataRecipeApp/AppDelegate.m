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
    
    //Create a new AppModel instance
    AppModel *dataModel = [[AppModel alloc] init];
    
    //Get a new project from dateModel and use it
    Project *newProject = [dataModel makeNewProject];
    newProject.name = @"App Delegate's Project";
    NSLog(@"project.name = %@", newProject.name);
    NSLog(@"project.descrip = %@", newProject.descrip);
    NSLog(@"project.dueDate = %@\n", newProject.dueDate);
    
    //post changes back to date store
    [[dataModel managedObjectContext] save:nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end