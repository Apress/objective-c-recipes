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
        
        //Use key paths to get property values
        //Use id to get a generalized object reference
        id temp;
        
        //Get the name of the person in charge using a dot notation
        temp = workProject01.personInCharge.name;
        NSLog(@"workProject01.personInCharge.name = %@", temp);
        
        //Get the name of the person in charge using a key path
        temp = [workProject01 valueForKeyPath:@"personInCharge.name"];
        NSLog(@"personInCharge.name = %@", temp);
        
        //Get the name of the person in charge in uppercase using a key path
        temp = [workProject01 valueForKeyPath:@"personInCharge.name.uppercaseString"];
        NSLog(@"personInCharge.name.uppercaseString = %@", temp);
        
        //Set the name of the person in charge using a key path
        [workProject01 setValue:@"Mary Steinbeck"
                     forKeyPath:@"personInCharge.name"];
                
        //write out the object graph's contents
        [workProject01 writeReportToLog];
    }
    return 0;
}

