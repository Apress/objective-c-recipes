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

    //Make a project
    Project *p1 = [dataModel makeNewProject];
    p1.name = @"Proj1";
    
    //Make a task
    Task *t1 = (Task *)[NSEntityDescription insertNewObjectForEntityForName:@"Task"
                                                              inManagedObjectContext:[dataModel managedObjectContext]];
    t1.name = @"Task 1";
    t1.details = @"Task details";
    t1.dueDate = [NSDate date];
    t1.priority = [NSNumber numberWithInt:1];
    
    //Add the task to the project
    [p1 addListOfTasksObject:t1];
    
    //Make a task
    Task *t2 = (Task *)[NSEntityDescription insertNewObjectForEntityForName:@"Task"
                                                     inManagedObjectContext:[dataModel managedObjectContext]];
    t2.name = @"Task 2";
    t2.details = @"Task details";
    t2.dueDate = [NSDate date];
    t2.priority = [NSNumber numberWithInt:1];
    
    //Add the task to the project
    [p1 addListOfTasksObject:t2];
    
    //Get all the projects in the data store
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Project"
                                              inManagedObjectContext:[dataModel managedObjectContext]];
    request.entity = entity;
    NSArray *listOfProjects = [[dataModel managedObjectContext] executeFetchRequest:request error:nil];
    
    //print out contents of all the projects (including the tasks):
    NSLog(@"-----");
    NSLog(@"NEW PROJECTS IN CONTEXT");
    [listOfProjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"project.name = %@", [obj name]);
        [[obj listOfTasks] enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
            NSLog(@" task.name = %@", [obj name]);
        }];
    }];
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end