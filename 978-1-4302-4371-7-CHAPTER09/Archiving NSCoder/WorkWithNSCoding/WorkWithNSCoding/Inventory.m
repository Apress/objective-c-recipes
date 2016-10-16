//
//  Inventory.m
//  WorkWithNSCoding
//
//  Created by Matthew Campbell on 2/1/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Inventory.h"

@implementation Inventory
@synthesize listOfCars;

-(void)writeOutInventoryReport{
    NSLog(@"Inventory Report (List Of Cars)");
	[self.listOfCars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj writeOutThisCarsState];
    }];
}

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.listOfCars forKey:@"listOfCarskey"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self.listOfCars = [decoder decodeObjectForKey:@"listOfCarskey"];
    
    return self;
}

@end
