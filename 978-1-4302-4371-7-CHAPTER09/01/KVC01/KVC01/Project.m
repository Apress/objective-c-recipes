//
//  Project.m
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Project.h"

@implementation Project
@synthesize name, description, dueDate, listOfTasks, personInCharge;

- (id)init{
    self = [super init];
    if (self) {
        self.listOfTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)writeReportToLog{
    NSLog(@"PROJECT");
    NSLog(@"  name = %@", self.name);
    NSLog(@"  description = %@", self.description);
    NSLog(@"  dueDate = %@", self.dueDate);
    NSLog(@"  personInCharge = %@", self.personInCharge);
    NSLog(@"TASKS");
    [self.listOfTasks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj writeReportToLog];
    }];
}

@end
