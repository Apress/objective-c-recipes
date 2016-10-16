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
    
    Project *p2 = [dataModel makeNewProject];
    p2.name = @"Proj2";
    
    Project *p3 = [dataModel makeNewProject];
    p3.name = @"Proj3";
    
    Project *p4 = [dataModel makeNewProject];
    p4.name = @"Proj4";
    
    [[dataModel managedObjectContext] save:nil];
    
    
    //Get all the projects in the data store
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Project"
                                              inManagedObjectContext:[dataModel managedObjectContext]];
    request.entity = entity;
    NSArray *listOfProjects = [[dataModel managedObjectContext] executeFetchRequest:request error:nil];
    
    //print out contents of all the projects:
    NSLog(@"-----");
    NSLog(@"NEW PROJECTS IN CONTEXT");
    [listOfProjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"project.name = %@", [obj name]);
    }];
    
    //Rollback example
    Project *rollbackProject = [listOfProjects objectAtIndex:0];
    rollbackProject.name = @"Rollback Project";
    
    //Look at changed object
    NSLog(@"-----");
    NSLog(@"CHANGED PROJECTS IN CONTEXT");
    [listOfProjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"project.name = %@", [obj name]);
    }];
    
    //Discard changes
    if([[dataModel managedObjectContext] hasChanges])
        [[dataModel managedObjectContext] rollback];
    
    //Look at object after rollback
    NSLog(@"-----");
    NSLog(@"PROJECTS IN CONTEXT AFTER ROLLBACK");
    [listOfProjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"project.name = %@", [obj name]);
    }];
    
    //Delete second and third projects
    [[dataModel managedObjectContext] deleteObject:p2];
    [[dataModel managedObjectContext] deleteObject:p3];
    
    //save back to data store
    [[dataModel managedObjectContext] save:nil];
    
    //Get all the projects in the data store
    request = [[NSFetchRequest alloc] init];
    entity = [NSEntityDescription entityForName:@"Project"
                         inManagedObjectContext:[dataModel managedObjectContext]];
    request.entity = entity;
    listOfProjects = [[dataModel managedObjectContext] executeFetchRequest:request error:nil];
    
    //Look at objects after deletion
    NSLog(@"-----");
    NSLog(@"PROJECTS IN CONTEXT AFTER DELETION");
    [listOfProjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"project.name = %@", [obj name]);
    }];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end