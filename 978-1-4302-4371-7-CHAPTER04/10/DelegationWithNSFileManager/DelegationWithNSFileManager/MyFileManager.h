//
//  MyFileManager.h
//  DelegationWithNSFileManager
//
//  Created by Matthew Campbell on 1/26/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyFileManager : NSObject<NSFileManagerDelegate>

@property(strong)NSFileManager *fileManager;

@end
