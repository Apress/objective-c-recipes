//
//  AppModel.m
//  CoreDataRecipeApp
//
//  Created by Matthew Campbell on 4/6/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "AppModel.h"

@implementation AppModel
NSManagedObjectModel *_managedObjectModel;
NSPersistentStoreCoordinator *_persistentStoreCoordinator;
NSManagedObjectContext *_managedObjectContext;

-(Project *)makeNewProject{
    
    Project *managedProject = (Project *)[NSEntityDescription insertNewObjectForEntityForName:@"Project"
                                                                       inManagedObjectContext:[self managedObjectContext]];
    managedProject.name = @"New Project";
    managedProject.descrip = @"This is a new project";
    managedProject.dueDate = [NSDate date];
    
    managedProject.personInCharge = [self makeNewWorker];
    
    return managedProject;
    
}

-(Worker *)makeNewWorker{
    Worker *managedWorker = (Worker *)[NSEntityDescription insertNewObjectForEntityForName:@"Worker"
                                                                    inManagedObjectContext:[self managedObjectContext]];
    managedWorker.name = @"New Worker";
    managedWorker.Role = @"Works on projects";
    
    return managedWorker;
}

- (NSURL *)dataStoreURL {
    
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    return [NSURL fileURLWithPath:[docDir stringByAppendingPathComponent:@"DataStore.sql"]];
}

- (NSManagedObjectModel *)managedObjectModel {
    if (_managedObjectModel) {
        return _managedObjectModel;
    }
    _managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];    
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    if (_persistentStoreCoordinator) {
        return _persistentStoreCoordinator;
    }
    
    NSError *error = nil;
    
    NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
                             [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption,
                             [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                                   configuration:nil
                                                             URL:[self dataStoreURL]
                                                         options:options
                                                           error:&error]) {
        NSLog(@"Unresolved Core Data error with persistentStoreCoordinator: %@, %@", error, [error userInfo]);
    }    
    
    return _persistentStoreCoordinator;
}

- (NSManagedObjectContext *)managedObjectContext {
    if (_managedObjectContext) {
        return _managedObjectContext;
    }
    
    if ([self persistentStoreCoordinator]) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:[self persistentStoreCoordinator]];
    }
    
    return _managedObjectContext;
}

@end
