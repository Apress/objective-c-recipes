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
    
    //Make some projects
    Project *p1 = [dataModel makeNewProject];
    p1.name = @"Proj1";
    
    NSLog(@"p1.name = %@, p1.personInCharge = %@", p1.name, p1.personInCharge.name);
    
    Worker *worker = p1.personInCharge;
    NSLog(@"w.project.name = %@", worker.project.name);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end