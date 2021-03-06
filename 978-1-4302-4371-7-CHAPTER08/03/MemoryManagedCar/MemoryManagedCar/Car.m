//
//  NewCar.m
//  MemoryManagedCar
//
//  Created by Matthew Campbell on 3/15/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void)setName:(NSString *)name{
    [name retain];
    [name_ release];
    name_ = name;
}

-(NSString *) name{
    return name_;
}

+(void)writeDescriptionToLogWithThisDate:(NSDate *)date{
	NSLog(@"Today's date is %@ and this class represents a car", date);
}

-(void)writeOutThisCarsState{
	NSLog(@"This car is a %@", self.name);
}

-(void)dealloc{
    NSLog(@"%@'s dealloc is executing", self.name);
    [super dealloc];
    [name_ release];
    name_ = nil;
}

@end
