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
        
        //Use key paths to get aggregated information from arrays
        //Get the count
        id count = [workProject01 valueForKeyPath:@"listOfTasks.@count.priority"];
        NSLog(@"task list count = %@", count);
        
        //Get the sum of all the priority values
        id sum = [workProject01 valueForKeyPath:@"listOfTasks.@sum.priority"];
        NSLog(@"sum of task list priorities = %@", sum);
        
        //Get the average of all the priority values
        id average = [workProject01 valueForKeyPath:@"listOfTasks.@avg.priority"];
        NSLog(@"average of task list priorities = %@", average);
        
        //Get the minimum of all the priority values
        id min = [workProject01 valueForKeyPath:@"listOfTasks.@min.priority"];
        NSLog(@"min of task list priorities = %@", min);
        
        //Get the maximum of all the priority values
        id max = [workProject01 valueForKeyPath:@"listOfTasks.@max.priority"];
        NSLog(@"max of task list priorities = %@", max);
        
        //Get a list of distinct assigned to values
        id listOfWorkers = [workProject01 valueForKeyPath:@"listOfTasks.@distinctUnionOfObjects.assignedWorker"];
        NSLog(@"list of distinct workers from task list = %@", listOfWorkers);
        
    }
    return 0;
}

