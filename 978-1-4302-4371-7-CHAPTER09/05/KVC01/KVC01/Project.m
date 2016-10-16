//
//  Project.m
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Project.h"

@implementation Project
@synthesize name, description, dueDate, personInCharge;

-(void)writeReportToLog{
    NSLog(@"PROJECT");
    NSLog(@"  name = %@", self.name);
    NSLog(@"  description = %@", self.description);
    NSLog(@"  dueDate = %@", self.dueDate);
    NSLog(@"  personInCharge = %@", self.personInCharge);
}

-(void)dealloc{
    [self removeObserver:self.personInCharge
                       forKeyPath:@"name"];
}

@end
