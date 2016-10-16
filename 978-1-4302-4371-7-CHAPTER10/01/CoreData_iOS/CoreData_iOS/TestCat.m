//
//  TestCat.m
//  CoreData_iOS
//
//  Created by Matthew Campbell on 4/5/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "TestCat.h"

@implementation TestCat
@synthesize listOfObjects;

-(void)doSomething{
    //Do a fetch:
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person"
                                            inManagedObjectContext:[self managedObjectContext]];
    request.entity = entity;
    NSError *error = nil;
    
    self.listOfObjects = [[[self managedObjectContext] executeFetchRequest:request error:&error] mutableCopy];
    
    if(!error){
        if(self.listOfObjects  && [self.listOfObjects count] > 0)
            NSLog(@"The list of objects was fetched from Core Data");
        else {
            NSLog(@"Create a managed object");
            
            Person *person = (Person *)[NSEntityDescription insertNewObjectForEntityForName:@"Person" 
                                                                     inManagedObjectContext:[self managedObjectContext]];
            
            person.name = @"Jane";
            person.age = [NSNumber numberWithInt:21];
            [self.listOfObjects addObject:person];
            [self saveChangesToDataStore];
        }
        
        [self.listOfObjects enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"obj.class=%@, obj.name=%@, obj.age = %@", [obj class], [obj name], [obj age]);
        }];
    }
    else{
        NSLog(@"Error testing Core Data: %@", error);
    }
}

@end
