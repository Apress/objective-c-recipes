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

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context{
    NSLog(@"'%@' has noticed that the project '%@' has changed", self, object);
    
    NSLog(@"'%@' was changed to '%@'", keyPath, [change objectForKey:@"new"]);
}

@end
