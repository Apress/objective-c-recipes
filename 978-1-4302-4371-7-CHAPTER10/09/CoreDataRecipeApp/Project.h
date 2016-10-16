//
//  Project.h
//  CoreDataRecipeApp
//
//  Created by Matthew Campbell on 4/13/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Task, Worker;

@interface Project : NSManagedObject

@property (nonatomic, retain) NSString * descrip;
@property (nonatomic, retain) NSDate * dueDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *listOfTasks;
@property (nonatomic, retain) Worker *personInCharge;
@end

@interface Project (CoreDataGeneratedAccessors)

- (void)addListOfTasksObject:(Task *)value;
- (void)removeListOfTasksObject:(Task *)value;
- (void)addListOfTasks:(NSSet *)values;
- (void)removeListOfTasks:(NSSet *)values;

@end
