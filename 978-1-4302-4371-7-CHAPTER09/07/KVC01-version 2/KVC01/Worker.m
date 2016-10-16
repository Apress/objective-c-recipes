//
//  Worker.m
//  KVC01
//
//  Created by Matthew Campbell on 3/20/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Worker.h"

@implementation Worker
@synthesize name, role;

-(NSString *)description{
    return [NSString stringWithFormat:@"%@, %@", name, role];
}

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.name forKey:@"namekey"];
    [encoder encodeObject:self.role forKey:@"rolekey"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self.name = [decoder decodeObjectForKey:@"namekey"];
    self.role = [decoder decodeObjectForKey:@"rolekey"];
    
    return self;
}

@end
