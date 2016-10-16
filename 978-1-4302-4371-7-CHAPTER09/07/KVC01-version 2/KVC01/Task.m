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

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.name forKey:@"namekey"];
    [encoder encodeObject:self.details forKey:@"detailskey"];
    [encoder encodeObject:self.dueDate forKey:@"dueDatekey"];
    [encoder encodeObject:[NSNumber numberWithInt:self.priority] forKey:@"prioritykey"];
    [encoder encodeObject:self.assignedWorker forKey:@"assignedWorkerkey"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self.name = [decoder decodeObjectForKey:@"namekey"];
    self.details = [decoder decodeObjectForKey:@"detailskey"];
    self.dueDate = [decoder decodeObjectForKey:@"dueDatekey"];
    self.priority = [[decoder decodeObjectForKey:@"prioritykey"] intValue];
    self.assignedWorker = [decoder decodeObjectForKey:@"assignedWorkerkey"];
    
    return self;
}

@end
