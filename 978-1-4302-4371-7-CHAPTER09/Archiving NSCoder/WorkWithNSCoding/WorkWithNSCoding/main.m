//
//  main.m
//  WorkWithNSCoding
//
//  Created by Matthew Campbell on 2/1/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Inventory.h"

int main (int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        //Create first object:
        Car *car1 = [[Car alloc] init];
        car1.name = @"car1";
        car1.model = @"General Car Company";
        car1.make = @"Family Sedan V4";
        car1.milage = [NSNumber numberWithInt:12000];
        car1.engine = [[Engine alloc] init];
        car1.engine.type = @"V4";
        car1.listOfTags = [NSArray arrayWithObjects:@"Good condition", @"Navigation System", nil];
        
        //Create second object
        Car *car2 = [[Car alloc] init];
        car2.name = @"car2";
        car2.model = @"The Other Car Company";
        car2.make = @"Sporty Stein V8";
        car2.milage = [NSNumber numberWithInt:6500];
        car2.engine = [[Engine alloc] init];
        car2.engine.type = @"V8";
        car2.listOfTags = [NSArray arrayWithObjects:@"Fair condition", @"Manual Transmission", @"Sound System", nil];
        
        //Create root object:
        Inventory *inventory = [[Inventory alloc] init];
        inventory.listOfCars = [NSArray arrayWithObjects:car1, car2, nil];
        
        //Archive:
        BOOL dataArchived = [NSKeyedArchiver archiveRootObject:inventory
                                                        toFile:@"/Users/Shared/carInventoryArchive"];
        
        NSMutableData *m =[[NSMutableData alloc] init];
        NSKeyedArchiver *a = [[NSKeyedArchiver alloc] initForWritingWithMutableData:m];
        a.outputFormat = NSPropertyListXMLFormat_v1_0;
        [a encodeObject:inventory
                 forKey:@"inventory"];
        [a finishEncoding];
        [m writeToFile:@"/Users/Shared/data.xml" atomically:NO];
        
        if(dataArchived)
            NSLog(@"File appears to have been archived");
        
        //Test to see if archive saved property        
        Inventory *storedInventory = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/Shared/carInventoryArchive"];
        [storedInventory writeOutInventoryReport];
        
        
        //Change to byte stream and save to file system that way
        NSData *dataStore = [NSKeyedArchiver archivedDataWithRootObject:storedInventory];
        char *bytesFromData = (char *)[dataStore bytes];
        NSUInteger len = dataStore.length;
        NSData *dataFromByteStream =[NSData dataWithBytes:bytesFromData
                                                   length:len];
        
        [dataFromByteStream writeToFile:@"/Users/Shared/dataFromByteStream"
                             atomically:YES];
        
        
        //Test to see if byte stream saved properly:
        NSData *dataFromFile = [NSData dataWithContentsOfFile:@"/Users/Shared/dataFromByteStream"];
        Inventory *testInventory = [NSKeyedUnarchiver unarchiveObjectWithData:dataFromFile];
        [testInventory writeOutInventoryReport];
        
    }
    return 0;
}

