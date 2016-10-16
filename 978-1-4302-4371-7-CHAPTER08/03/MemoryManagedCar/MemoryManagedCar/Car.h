//
//  NewCar.h
//  MemoryManagedCar
//
//  Created by Matthew Campbell on 3/15/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
@private
    NSString *name_;
}

@property(strong) NSString *name;

+(void)writeDescriptionToLogWithThisDate:(NSDate *)date;

-(void)writeOutThisCarsState;

@end
