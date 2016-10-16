//
//  Task.h
//  CoreDataRecipeApp
//
//  Created by Matthew Campbell on 4/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Project;

@interface Task : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * details;
@property (nonatomic, retain) NSString * dueDate;
@property (nonatomic, retain) NSNumber * priority;
@property (nonatomic, retain) Project *project;

@end
