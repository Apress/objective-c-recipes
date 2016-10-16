//
//  Engine.m
//  WorkWithNSCoding
//
//  Created by Matthew Campbell on 2/1/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "Engine.h"

@implementation Engine
@synthesize type;

-(void)writeOutThisEnginesState{
	NSLog(@"This engine's type is %@", self.type);
}

- (void) encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.type forKey:@"typekey"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    self.type = [decoder decodeObjectForKey:@"typekey"];
    
    return self;
}

@end