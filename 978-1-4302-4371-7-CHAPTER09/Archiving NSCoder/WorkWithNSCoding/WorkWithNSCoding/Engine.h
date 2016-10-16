//
//  Engine.h
//  WorkWithNSCoding
//
//  Created by Matthew Campbell on 2/1/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject<NSCoding>

@property(strong) NSString *type;

-(void)writeOutThisEnginesState;

@end