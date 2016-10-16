//
//  Car.m
//  WorkWithNSCoding
//
//  Created by Matthew Campbell on 2/1/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Car.h"

@implementation Car
@synthesize name, make, model, milage, engine, listOfTags;

-(void)writeOutThisCarsState{
	NSLog(@"This car is %@", self.name);
    NSLog(@"%@'s make is %@", self.name, self.make);
    NSLog(@"%@'s model is %@", self.name, self.model);
    NSLog(@"%@'s milage is %@", self.name, self.milage);
    NSLog(@"%@'s tags %@", self.name, self.listOfTags);
    [self.engine writeOutThisEnginesState];
}

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.name forKey:@"namekey"];
    [encoder encodeObject:self.make forKey:@"makekey"];
    [encoder encodeObject:self.model forKey:@"modelkey"];
    [encoder encodeObject:self.milage forKey:@"milagekey"];
    [encoder encodeObject:self.engine forKey:@"enginekey"];
    [encoder encodeObject:self.listOfTags forKey:@"listoftagskey"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self.name = [decoder decodeObjectForKey:@"namekey"];
    self.make = [decoder decodeObjectForKey:@"makekey"];
    self.model = [decoder decodeObjectForKey:@"modelkey"];
    self.milage = [decoder decodeObjectForKey:@"milagekey"];
    self.engine = [decoder decodeObjectForKey:@"enginekey"];
    self.listOfTags = [decoder decodeObjectForKey:@"listoftagskey"];
    
    return self;
}

@end