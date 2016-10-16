//
//  ViewController.m
//  SimpleThreadApp
//
//  Created by Matthew Campbell on 2/7/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myButton, myActivityIndicator;

-(void) bigTask{
    for(int i=0;i<40000;i++){
        NSString *newString = [NSString stringWithFormat:@"i = %i", i];
        NSLog(@"%@", newString);
    }
    [self.myActivityIndicator stopAnimating];
}


 //do task without using a new thread (watch UI to see how this works)
 -(void)bigTaskAction{
 [self.myActivityIndicator startAnimating];
 [self bigTask];
 }
 

/*
//do task by detaching a new thread (watch UI to see how this works)
-(void)bigTaskAction{
    [self.myActivityIndicator startAnimating];
    
    [NSThread detachNewThreadSelector:@selector(bigTask)
                             toTarget:self
                           withObject:nil];
    
}
*/

- (void)viewDidLoad{
    [super viewDidLoad];
    
	//Create button
	self.myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect]; 
	self.myButton.frame = CGRectMake(20, 403, 280, 37);
	[self.myButton addTarget:self 
                      action:@selector(bigTaskAction) 
            forControlEvents:UIControlEventTouchUpInside]; 
	[self.myButton setTitle:@"Do Long Task" 
                   forState:UIControlStateNormal]; 
	
    [self.view addSubview:self.myButton];
    
    //Create activity indicator
    self.myActivityIndicator = [[UIActivityIndicatorView alloc] init];
    self.myActivityIndicator.frame = CGRectMake(142, 211, 37, 37);
    self.myActivityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    self.myActivityIndicator.hidesWhenStopped = NO;
    
    [self.view addSubview:self.myActivityIndicator];
    
}

@end