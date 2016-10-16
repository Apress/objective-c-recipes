//
//  Worker.h
//  CoreDataRecipeApp
//
//  Created by Matthew Campbell on 4/12/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Project;

@interface Worker : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * role;
@property (nonatomic, retain) Project *project;

@end
