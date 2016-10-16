//
//  ViewController.m
//  SimpleThreadApp
//
//  Created by Matthew Campbell on 2/7/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myButton, myActivityIndicator, myProgressView;

-(void)updateProgressViewWithPercentage:(NSNumber *)percentDone{
    [self.myProgressView setProgress:[percentDone floatValue]
                            animated:YES];
}

-(void) bigTask{
    @autoreleasepool {
        int updateUIWhen = 1000;
        for(int i=0;i<10000;i++){
            NSString *newString = [NSString stringWithFormat:@"i = %i", i];
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
}

//do task by detaching a new thread (watch UI to see how this works)
-(void)bigTaskAction{
    [self.myActivityIndicator startAnimating];
    
    [NSThread detachNewThreadSelector:@selector(bigTask)
                             toTarget:self
                           withObject:nil];
    
}

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
    
    //Create label
    self.myProgressView = [[UIProgressView alloc] init];
    self.myProgressView.frame = CGRectMake(20, 20, 280, 9);
    [self.view addSubview:self.myProgressView];
    
}

@end