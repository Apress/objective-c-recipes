//
//  Task.h
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Worker.h"

@interface Task : NSObject<NSCoding>

@property(strong)NSString *name;
@property(strong)NSString *details;
@property(strong)NSDate *dueDate;
@property(assign)int priority;
@property(strong)Worker *assignedWorker;

-(void)writeReportToLog;

@end
