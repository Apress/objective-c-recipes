//
//  Person.h
//  SortingArrays
//
//  Created by Matthew Campbell on 1/10/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong) NSString *firstName;
@property(strong) NSString *lastName;
@property(assign) int age;

-(id)initWithFirstName:(NSString *)fName lastName:(NSString *)lName andAge:(int)a;

-(void)reportState;

@end
