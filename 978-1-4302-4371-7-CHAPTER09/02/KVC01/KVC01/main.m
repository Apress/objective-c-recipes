//
//  main.m
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"
#import "Task.h"

int main(int argc, const char * argv[]){
    @autoreleasepool {
        //Create a new project
        Project *workProject01 =[[Project alloc] init];
        workProject01.name = @"Make iOS App";
        workProject01.description = @"Make an iOS application for the iPad";
        workProject01.dueDate = [NSDate date];
        
        //Setup a new person to be in charge
        Worker *personInCharge = [[Worker alloc] init];
        personInCharge.name = @"Jane Smith";
        personInCharge.role = @"Manager";
        
        //Assign person to project
        workProject01.personInCharge = personInCharge;
        
        //Create new task
        Task *task01 = [[Task alloc] init];
        task01.name = @"Learn Objective-C";
        task01.details = @"Learn Objective-C to make Mac apps";
        task01.priority = 1;
        task01.dueDate = [NSDate date];
        
        //Setup a new person to assign to the task
        Worker *employee = [[Worker alloc] init];
        employee.name = @"David Done";
        employee.role = @"Programmer";
        
        //Assign worker to task
        task01.assignedWorker = employee;
        
        //Add task to project
        [workProject01.listOfTasks addObject:task01];
        
        //Create new task
        Task *task02 = [[Task alloc] init];
        task02.name = @"Investigate UIKit";
        task02.details = @"Investigate UIKit to see how it works for users.";
        task02.priority = 3;
        task02.dueDate = [NSDate date];
        
        //Assign worker to task
        task02.assignedWorker = employee;
        
        //Add task to project
        [workProject01.listOfTasks addObject:task02];
        
        //Create new task
        Task *task03 = [[Task alloc] init];
        task03.name = @"Evaluate";
        task03.details = @"Signoff on initial project progress.";
        task03.priority = 1;
        task03.dueDate = [NSDate date];
        
        //Assign worker to task
        task03.assignedWorker = personInCharge;
        
        //Add task to project
        [workProject01.listOfTasks addObject:task03];
        
        //Use KVC to get property values
        //Use id to get a generalized object reference
        id temp;
        
        //Get the name of the project:
        temp = [workProject01 valueForKey:@"name"];
        NSLog(@"temp (from key name) = %@", temp);
        
        //get the person in charge:

        temp = [workProject01 valueForKey:@"personInCharge"];
        NSLog(@"temp (from key personInCharge) = %@", temp);
        
        //get the project's task list:
        temp = [workProject01 valueForKey:@"listOfTasks"];
        NSLog(@"temp (from key listOfTasks) = %@", temp);
        
        NSArray *stuffFromTaskList = [temp valueForKey:@"name"];
        [stuffFromTaskList enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"obj: %@", obj);
        }];
        
        //Use KVC to set property values
        [workProject01 setValue:@"My Pet Project"
                         forKey:@"name"];
        
        temp = [workProject01 valueForKey:@"listOfTasks"];
        [temp setValue:@"New Task"
                forKey:@"name"];
        
        //write out the object graph's contents
        [workProject01 writeReportToLog];
    }
    return 0;
}

