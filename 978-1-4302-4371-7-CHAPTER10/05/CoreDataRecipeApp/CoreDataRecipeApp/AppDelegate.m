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
    
    //Get all the projects in the data store
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Project"
                                              inManagedObjectContext:[dataModel managedObjectContext]];
    request.entity = entity;
    NSArray *listOfProjects = [[dataModel managedObjectContext] executeFetchRequest:request error:nil];
    
    //List out contents of each project
    if([listOfProjects count] == 0)
        NSLog(@"There are no projects in the data store yet");
    else {
        NSLog(@"HERE ARE THE PROJECTS IN THE DATA STORE");
        [listOfProjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"-----");
            NSLog(@"project.name = %@", [obj name]);
            NSLog(@"project.descrip = %@", [obj descrip]);
            NSLog(@"project.dueDate = %@\n", [obj dueDate]);
        }];
    }
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end