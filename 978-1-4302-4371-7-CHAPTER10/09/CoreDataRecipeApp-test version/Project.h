//
//  Project.h
//  CoreDataRecipeApp
//
//  Created by Matthew Campbell on 4/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Worker;

@interface Project : NSManagedObject

@property (nonatomic, retain) NSString * descrip;
@property (nonatomic, retain) NSDate * dueDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * attribute;
@property (nonatomic, retain) Worker *personInCharge;

@end
