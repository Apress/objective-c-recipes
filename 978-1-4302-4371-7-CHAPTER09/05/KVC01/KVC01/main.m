//
//  main.m
//  KVC01
//
//  Created by Matthew Campbell on 3/19/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

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
        
        //Add personInCharge as an observer:
        [workProject01 addObserver:personInCharge
                        forKeyPath:@"name"
                           options:NSKeyValueObservingOptionNew
                           context:nil];
        
        
        //Assign person to project
        workProject01.personInCharge = personInCharge;

        //change the name of the project
        workProject01.name = @"The Wow Project!";
        
    }
    return 0;
}

