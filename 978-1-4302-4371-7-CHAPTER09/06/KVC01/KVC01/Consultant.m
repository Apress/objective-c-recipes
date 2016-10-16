//
//  Consultant.m
//  KVC01
//
//  Created by Matthew Campbell on 3/27/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Consultant.h"

@implementation Consultant

-(NSString *)description{
    return [NSString stringWithFormat:@"%@, %@", [super description], @"Consultant"];
}

@end
