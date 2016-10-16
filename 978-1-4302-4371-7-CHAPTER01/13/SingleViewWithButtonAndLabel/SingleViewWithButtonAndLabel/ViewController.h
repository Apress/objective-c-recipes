//
//  ViewController.h
//  SingleViewWithButtonAndLabel
//
//  Created by Matthew Campbell on 12/20/11.
//  Copyright (c) 2011 Mobile App Mastery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(strong) UILabel *myLabel;
@property(strong) UIButton *myButton;

-(void)updateLabel;

@end
