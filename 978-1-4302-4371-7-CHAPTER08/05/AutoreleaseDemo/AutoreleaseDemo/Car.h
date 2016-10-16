//
//  Car.h
//  AutoreleaseDemo
//
//  Created by Matthew Campbell on 3/16/12.
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

+(Car *)carWithThisName:(NSString *)carName;

@end
