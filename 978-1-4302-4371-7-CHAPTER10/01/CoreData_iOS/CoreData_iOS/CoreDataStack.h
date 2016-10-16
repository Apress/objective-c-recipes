//
//  NSObject+CoreDataStack.h
//  CoreData_iOS
//
//  Created by Matthew Campbell on 4/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface NSObject (CoreDataStack)

@property(strong) NSString *dataStoreFileName;
@property (nonatomic, strong, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, strong, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

-(NSURL *)dataStoreURL;
-(void)saveChangesToDataStore;

@end