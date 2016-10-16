//
//  main.m
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"
#import "Consultant.h"

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

        //Create a consultant
        Consultant *consulter = [[Consultant alloc] init];
        consulter.name = @"Lone Wolf";
        consulter.role = @"Star Programmer";
        
        //Get object from key path
        id projectManager = [workProject01 valueForKey:@"personInCharge"];
        
        //See if the object responds to a selector
        BOOL doesItRespond = [projectManager respondsToSelector:@selector(writeReportToLog)];
        
        if(doesItRespond)
            [projectManager writeReportToLog];
        else
            NSLog(@"'%@' doesn't respond to selector", projectManager);
        
        //See if consulter is a type of Worker
        BOOL isItAKindOfClass = [consulter isKindOfClass:[Worker class]];
        
        if(isItAKindOfClass)
            NSLog(@"consulter is a Worker (%@)", consulter);
        else
            NSLog(@"consulter's no Worker");

        //See if projectManager is a type of Worker
        isItAKindOfClass = [projectManager isKindOfClass:[Worker class]];
        
        if(isItAKindOfClass)
            NSLog(@"projectManager is a Worker (%@)", projectManager);
        else
            NSLog(@"projectManager's no Worker");
        
        //See if projectManager is an instance of Worker
        BOOL isAnInstanceOfClass = [projectManager isMemberOfClass:[Worker class]];
        
        if(isAnInstanceOfClass)
            NSLog(@"projectManager is an instance of Worker");
        else
            NSLog(@"projectManager's no Worker");
        
        //See if consulter is an instance of Worker
        isAnInstanceOfClass = [consulter isMemberOfClass:[Worker class]];
        
        if(isAnInstanceOfClass)
            NSLog(@"consulter is an instance of Worker");
        else
            NSLog(@"consulter's no Worker");
        
        //Compare two objects
        BOOL isEqual = [projectManager isEqual:consulter];
        
        if(isEqual)
            NSLog(@"'%@' == '%@'", projectManager, consulter);
        else
            NSLog(@"'%@' != '%@'", projectManager, consulter);
        
        isEqual = [projectManager isEqual:personInCharge];
        
        if(isEqual)
            NSLog(@"'%@' == '%@'", projectManager, personInCharge);
        else
            NSLog(@"'%@' != '%@'", projectManager, personInCharge);
        
    }
    return 0;
}

