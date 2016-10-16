//
//  NSObject+CoreDataStack.m
//  CoreData_iOS
//
//  Created by Matthew Campbell on 4/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "CoreDataStack.h"

@implementation NSObject (CoreDataStack)

NSString *_dataStoreFileName;
NSManagedObjectModel *_managedObjectModel;
NSManagedObjectContext *_managedObjectContext;
NSPersistentStoreCoordinator *_persistentStoreCoordinator;

- (NSString *)dataStoreFileName{
    if(!_dataStoreFileName)
        _dataStoreFileName = @"DataStore.sql";
    return _dataStoreFileName;
}

- (void)setDataStoreFileName:(NSString *)value{
    _dataStoreFileName = value;
}

- (NSURL *)dataStoreURL {
    return [NSURL fileURLWithPath:[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]
                                   stringByAppendingPathComponent:self.dataStoreFileName]];
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
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    
    return _managedObjectContext;
}

- (void)saveChangesToDataStore {
    NSError *error = nil;
    if ([self managedObjectContext] != nil) {
        if ([[self managedObjectContext] hasChanges]){
            if(![[self managedObjectContext] save:&error]) {
                NSLog(@"Unresolved Core Data error with saveChangesToDataStore: %@, %@", error, [error userInfo]);
            } 
            
        }
    }
}

@end
