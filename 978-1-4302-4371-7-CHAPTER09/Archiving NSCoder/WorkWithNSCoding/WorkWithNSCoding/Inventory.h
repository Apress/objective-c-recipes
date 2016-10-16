//
//  Inventory.h
//  WorkWithNSCoding
//
//  Created by Matthew Campbell on 2/1/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Inventory : NSObject<NSCoding>

@property(strong)NSArray *listOfCars;

-(void)writeOutInventoryReport;

@end
