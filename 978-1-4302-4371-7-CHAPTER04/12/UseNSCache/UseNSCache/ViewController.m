//
//  ViewController.m
//  UseNSCache
//
//  Created by Matthew Campbell on 1/27/12.
//  Copyright (c) 2012 Mobile App Mastery. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize cache, regularLogo, myImageView, loadImageButton;

-(void)viewDidLoad{
    [super viewDidLoad];
    
    //Change the view's background color to white
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Load the regular logo first
    self.regularLogo = YES;
    
    //set up the cache
    self.cache = [[NSCache alloc] init];
    
    //Setup the button
    self.loadImageButton = [UIButton buttonWithType:UIButtonTypeRoundedRect]; 
	self.loadImageButton.frame = CGRectMake(20, 415, 280, 37);
	[self.loadImageButton addTarget:self 
				   action:@selector(presentImage) 
		 forControlEvents:UIControlEventTouchUpInside]; 
	[loadImageButton setTitle:@"Present Image" forState:UIControlStateNormal]; 
	[self.view addSubview:loadImageButton];
    
    //Setup the UIImageView
    self.myImageView = [[UIImageView alloc] init];
    self.myImageView.frame = CGRectMake(0, 0, 320, 407);
    self.myImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.myImageView];
}

- (void)presentImage{
    if(regularLogo){
        NSString *key = @"regular-logo";
        NSPurgeableData *data = [cache objectForKey:key];
        if(!data){
            NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
            NSString *imagePath = [NSString stringWithFormat:@"%@/MobileAppMastery-Log.png", bundlePath];
            data = [NSPurgeableData dataWithContentsOfFile:imagePath];
            [cache setObject:data
                      forKey:key];
            NSLog(@"Retrieved resource(%@) and added to cache", key);
        }
        else
            NSLog(@"Just retrieved resource(%@)", key);;
        self.myImageView.image = [UIImage imageWithData:data];
        regularLogo = NO;
    }
    else{
        NSString *key = @"greyscale-logo";
        NSPurgeableData *data = [cache objectForKey:key];
        if(!data){
            NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
            NSString *imagePath = [NSString stringWithFormat:@"%@/MAM_Logo_Square_No_Words_Grayscale.png", bundlePath];
            data = [NSPurgeableData dataWithContentsOfFile:imagePath];
            [cache setObject:data
                      forKey:key];
            NSLog(@"Retrieved resource(%@) and added to cache", key);
        }
        else
            NSLog(@"Just retrieved resource(%@)", key);
        self.myImageView.image = [UIImage imageWithData:data];
        regularLogo = YES;
    }
}

@end