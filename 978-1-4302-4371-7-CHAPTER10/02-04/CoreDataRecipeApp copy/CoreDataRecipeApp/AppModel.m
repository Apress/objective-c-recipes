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
@synthesize listOfProjects;

- (id)init{
    self = [super init];
    if (self) {
        NSFetchRequest *request = [[NSFetchRequest alloc] init];
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"Project"
                                                  inManagedObjectContext:[self managedObjectContext]];
        request.entity = entity;
        self.listOfProjects = [[[self managedObjectContext] executeFetchRequest:request error:nil] mutableCopy];
        
        //If no content yet, then create content
        if([self.listOfProjects count] == 0){
            NSLog(@"Creating new Core Data content since we don't have any yet.");
            
            Project *managedProject = (Project *)[NSEntityDescription insertNewObjectForEntityForName:@"Project"
                                                                               inManagedObjectContext:[self managedObjectContext]];
            
            managedProject.name = @"New Project";
            managedProject.descrip = @"This is a new project";
            managedProject.dueDate = [NSDate date];
            
            [self.listOfProjects addObject:managedProject];
            
            [[self managedObjectContext] save:nil];
            
        }
        else
            NSLog(@"We already have Core Data content.");
    }
    return self;
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
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                                   configuration:nil
                                                             URL:[self dataStoreURL]
                                                         options:nil
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
