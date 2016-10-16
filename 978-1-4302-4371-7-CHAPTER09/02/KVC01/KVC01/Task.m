//
//  Task.m
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Task.h"

@implementation Task
@synthesize name, details, dueDate, priority, assignedWorker;

-(void)writeReportToLog{
    NSLog(@"  name = %@", self.name);
    NSLog(@"    description = %@", self.details);
    NSLog(@"    dueDate = %@", self.dueDate);
    NSLog(@"    priority = %i", self.priority);
    NSLog(@"    assignedWorker = %@", self.assignedWorker);
}

@end
