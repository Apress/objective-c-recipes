//
//  ViewController.h
//  UseNSCache
//
//  Created by Matthew Campbell on 1/27/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong) NSCache *cache;
@property (assign) BOOL regularLogo;
@property (strong) UIImageView *myImageView;
@property (strong) UIButton *loadImageButton;

- (void)presentImage;

@end