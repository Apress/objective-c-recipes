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
        
        Project *storedProject = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/Shared/workProject01.dat"];
        if(storedProject)
            [storedProject writeReportToLog];
        else
            NSLog(@"Error attempting to retrieve the object graph");
        
    }
    return 0;
}

