//
//  ViewController.m
//  SingleViewWithButtonAndLabel
//
//  Created by Matthew Campbell on 12/20/11.
//  Copyright (c) 2011 Mobile App Mastery. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myLabel, myPickerView;

- (void)viewDidLoad{
    [super viewDidLoad];
    
    //Create label
	self.myLabel = [[UILabel alloc] init]; 
	self.myLabel.frame = CGRectMake(20, 20, 280, 40);
	self.myLabel.textAlignment = UITextAlignmentCenter;
    self.myLabel.backgroundColor =[UIColor clearColor];
	self.myLabel.text = @"Make a selection";
	[self.view addSubview:self.myLabel]; 
	
	//Create picker view
	self.myPickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 250, 325, 250)];
    
	self.myPickerView.showsSelectionIndicator = YES;
    self.myPickerView.delegate = self;
    
    [self.view addSubview:self.myPickerView];
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [NSString stringWithFormat:@"row number %i", row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.myLabel.text = [NSString stringWithFormat:@"row number %i", row];
}


@end