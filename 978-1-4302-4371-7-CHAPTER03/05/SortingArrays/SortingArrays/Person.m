//
//  Person.m
//  SortingArrays
//
//  Created by Matthew Campbell on 1/10/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize firstName, lastName, age;

-(id)initWithFirstName:(NSString *)fName lastName:(NSString *)lName andAge:(int)a{
    self = [super init];
    if (self) {
        self.firstName = fName;
        self.lastName = lName;
        self.age = a;
    }
    return self;
}

-(void)reportState{
    NSLog(@"This person's name is %@ %@ who is %i years old", firstName, lastName, age);
}

@end
