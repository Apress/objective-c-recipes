//
//  ViewController.m
//  GCD
//
//  Created by Matthew Campbell on 2/17/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myButton, myActivityIndicator, myProgressView;
NSOperationQueue *serialQueue;
NSOperationQueue *mainQueue;

-(void)bigTaskAction{
    
    [serialQueue addOperationWithBlock: ^{
        
        [mainQueue addOperationWithBlock: ^{
            
            [self.myActivityIndicator startAnimating];
            
        }];
        
        int updateUIWhen = 1000;
        for(int i=0;i<10000;i++){
            NSString *newString = [NSString stringWithFormat:@"i = %i", i];
            NSLog(@"%@", newString);
            if(i == updateUIWhen){
                float f = (float)i/10000;
                NSNumber *percentDone = [NSNumber numberWithFloat:f];
                
                [mainQueue addOperationWithBlock: ^{
                    [self.myProgressView setProgress:[percentDone floatValue]
                                            animated:YES];
                    
                }];
                
                updateUIWhen = updateUIWhen + 1000;
            }
        }
        
        [mainQueue addOperationWithBlock: ^{
            
            [self.myProgressView setProgress:1.0
                                    animated:YES];
            [self.myActivityIndicator stopAnimating];
            
        }];
    }];
}

- (void)viewDidLoad{
    [super viewDidLoad];
	
    //Create the operation queues
    mainQueue = [NSOperationQueue mainQueue];
    
    serialQueue = [[NSOperationQueue alloc] init];
    serialQueue.maxConcurrentOperationCount = 1;
    
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