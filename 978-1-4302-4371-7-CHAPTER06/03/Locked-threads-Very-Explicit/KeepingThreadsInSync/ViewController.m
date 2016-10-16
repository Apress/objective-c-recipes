//
//  ViewController.m
//  SimpleThreadApp
//
//  Created by Matthew Campbell on 2/7/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myButton1, myButton2, myActivityIndicator, myProgressView;
NSLock *threadLock;

-(void)updateProgressViewWithPercentage:(NSNumber *)percentDone{
    [self.myProgressView setProgress:[percentDone floatValue]
                            animated:YES];
    NSLog(@"UPDATED UI WITH THIS PERCENT: %@", percentDone);
}

-(void) bigTask:(NSString *)identifier{
    //[threadLock lock];
    @autoreleasepool {
        int updateUIWhen = 1000;
        for(int i=0;i<10000;i++){
            NSString *newString = [NSString stringWithFormat:@"%@ - i = %i", identifier, i];
            NSLog(@"%@", newString);
            if(i == updateUIWhen){
                float f = (float)i/10000;
                NSNumber *percentDone = [NSNumber numberWithFloat:f];
                [self performSelectorOnMainThread:@selector(updateProgressViewWithPercentage:)
                                       withObject:percentDone
                                    waitUntilDone:YES];
                updateUIWhen = updateUIWhen + 1000;
            }
        }
        [self performSelectorOnMainThread:@selector(updateProgressViewWithPercentage:)
                               withObject:[NSNumber numberWithFloat:1.0]
                            waitUntilDone:YES];
        [self.myActivityIndicator stopAnimating];
    }
    //[threadLock unlock];
}

//do task by detaching a new thread (watch UI to see how this works)
-(void)bigTaskAction:(id)sender{
    [self.myActivityIndicator startAnimating];
    UIButton *buttonSender = (UIButton *)sender;
    if(buttonSender.tag == 0)
        [NSThread detachNewThreadSelector:@selector(bigTask:)
                                 toTarget:self
                               withObject:@"LONG-TASK-1"];
    else
        [NSThread detachNewThreadSelector:@selector(bigTask:)
                                 toTarget:self
                               withObject:@"LONG-TASK-2"];  
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    //Create thread lock
    threadLock = [[NSLock alloc] init];
    
	//Create button 1
	self.myButton1 = [UIButton buttonWithType:UIButtonTypeRoundedRect]; 
    self.myButton1.tag = 0;
	self.myButton1.frame = CGRectMake(20, 350, 280, 37);
	[self.myButton1 addTarget:self 
                       action:@selector(bigTaskAction:) 
             forControlEvents:UIControlEventTouchUpInside]; 
	[self.myButton1 setTitle:@"Do Long Task #1" 
                    forState:UIControlStateNormal]; 
    [self.view addSubview:self.myButton1];
    
    //Create button
	self.myButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect]; 
    self.myButton2.tag = 1;
	self.myButton2.frame =CGRectMake(20, 403, 280, 37);
	[self.myButton2 addTarget:self 
                       action:@selector(bigTaskAction:) 
             forControlEvents:UIControlEventTouchUpInside]; 
	[self.myButton2 setTitle:@"Do Long Task #2" 
                    forState:UIControlStateNormal]; 
    [self.view addSubview:self.myButton2];
    
    //Create activity indicator
    self.myActivityIndicator = [[UIActivityIndicatorView alloc] init];
    self.myActivityIndicator.frame = CGRectMake(142, 211, 37, 37);
    self.myActivityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    self.myActivityIndicator.hidesWhenStopped = NO;
    [self.view addSubview:self.myActivityIndicator];
    
    //Create label
    self.myProgressView = [[UIProgressView alloc] init];
    self.myProgressView.frame = CGRectMake(20, 20, 280, 9);
    [self.view addSubview:self.myProgressView];
    
}

@end