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

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.name forKey:@"namekey"];
    [encoder encodeObject:self.description forKey:@"descriptionkey"];
    [encoder encodeObject:self.dueDate forKey:@"dueDatekey"];
    [encoder encodeObject:self.personInCharge forKey:@"personInChargekey"];
    [encoder encodeObject:self.listOfTasks forKey:@"listOfTaskskey"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self.name = [decoder decodeObjectForKey:@"namekey"];
    self.description = [decoder decodeObjectForKey:@"descriptionkey"];
    self.dueDate = [decoder decodeObjectForKey:@"dueDatekey"];
    self.personInCharge = [decoder decodeObjectForKey:@"personInChargekey"];
    self.listOfTasks = [decoder decodeObjectForKey:@"listOfTaskskey"];
    
    return self;
}

@end
