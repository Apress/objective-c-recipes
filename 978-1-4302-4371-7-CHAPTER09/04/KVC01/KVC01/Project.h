//
//  Project.h
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"
#import "Worker.h"

@interface Project : NSObject

@property(strong)NSString *name;
@property(strong)NSString *description;
@property(strong)NSDate *dueDate;
@property(strong)NSMutableArray *listOfTasks;
@property(strong)Worker *personInCharge;

-(void)writeReportToLog;

@end
