//
//  ViewController.m
//  Homework_Day09
//
//  Created by PHUPN-MAC on 10/28/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSLayoutConstraint *_LandscapeConstrainID;
    NSLayoutConstraint *_LandscapeConstrainDW;
}

@property (weak, nonatomic) IBOutlet UIImageView *iconPS;
@property (weak, nonatomic) IBOutlet UIImageView *iconId;
@property (weak, nonatomic) IBOutlet UIImageView *iconDw;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillLayoutSubviews
{
    if (self.interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
        self.interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        
        _LandscapeConstrainID =
        [NSLayoutConstraint constraintWithItem:self.iconId
                                     attribute:NSLayoutAttributeCenterX
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.iconPS
                                     attribute:NSLayoutAttributeCenterY
                                    multiplier:1
                                      constant:20];
        
        _LandscapeConstrainDW =
        [NSLayoutConstraint constraintWithItem:self.iconPS
                                     attribute:NSLayoutAttributeCenterX
                                     relatedBy:NSLayoutRelationEqual
                                        toItem:self.iconDw
                                     attribute:NSLayoutAttributeCenterY
                                    multiplier:1
                                      constant:90];

        
        
        [self.view addConstraint:_LandscapeConstrainID];
        [self.view addConstraint:_LandscapeConstrainDW];
    }
    else
    {
        [self.view removeConstraint:_LandscapeConstrainID];
        [self.view removeConstraint:_LandscapeConstrainDW];
    }
     
}

@end
