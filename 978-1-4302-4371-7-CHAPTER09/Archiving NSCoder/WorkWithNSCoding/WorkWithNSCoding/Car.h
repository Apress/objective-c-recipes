//
//  Car.h
//  WorkWithNSCoding
//
//  Created by Matthew Campbell on 2/1/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"

@interface Car : NSObject<NSCoding>

@property(strong) NSString *name;
@property(strong) NSString *make;
@property(strong) NSString *model;
@property(strong) NSNumber *milage;
@property(strong) Engine *engine;
@property(strong) NSArray *listOfTags;

-(void)writeOutThisCarsState;

@end