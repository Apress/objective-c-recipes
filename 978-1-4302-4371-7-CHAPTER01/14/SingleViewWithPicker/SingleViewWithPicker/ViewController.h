//
//  ViewController.h
//  SingleViewWithPicker
//
//  Created by Matthew Campbell on 12/20/11.
//  Copyright (c) 2011 Mobile App Mastery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>

@property(strong) UILabel *myLabel;
@property(strong) UIPickerView *myPickerView;

@end
