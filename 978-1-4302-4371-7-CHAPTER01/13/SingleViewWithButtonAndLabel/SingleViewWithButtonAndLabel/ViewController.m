//
//  ViewController.m
//  SingleViewWithButtonAndLabel
//
//  Created by Matthew Campbell on 12/20/11.
//  Copyright (c) 2011 Mobile App Mastery. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myLabel, myButton;

- (void)viewDidLoad{
    [super viewDidLoad];
    
    //Create label
	self.myLabel = [[UILabel alloc] init]; 
	self.myLabel.frame = CGRectMake(20, 20, 280, 40);
	self.myLabel.textAlignment = UITextAlignmentCenter;
    self.myLabel.backgroundColor =[UIColor clearColor];
	self.myLabel.text = @"Press the button";
	[self.view addSubview:self.myLabel]; 
	
	//Create button
	self.myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect]; 
	self.myButton.frame = CGRectMake(110, 200, 100, 50);
	
    //Add the pressButton action method
	[self.myButton addTarget:self 
				   action:@selector(updateLabel) 
		 forControlEvents:UIControlEventTouchUpInside]; 
	[self.myButton setTitle:@"Press" 
                   forState:UIControlStateNormal]; 
	
    [self.view addSubview:self.myButton];
    
}

-(void)updateLabel{
    self.myLabel.text = @"The button was pressed...";
}

@end