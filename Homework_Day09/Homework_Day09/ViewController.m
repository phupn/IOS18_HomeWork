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
    NSLayoutConstraint *_LandscapeConstrainPS;
    NSLayoutConstraint *_LandscapeConstrainDW;
}

@property (weak, nonatomic) IBOutlet UIImageView *iconPS;
@property (strong, nonatomic) IBOutlet UIImageView *iconId;
@property (weak, nonatomic) IBOutlet UIImageView *iconDw;
@property (strong, nonatomic) IBOutlet UIView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //[self.mainView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillLayoutSubviews
{
    
//    [self.view removeConstraint:_LandscapeConstrainID];
////    [self.view removeConstraint:_LandscapeConstrainPS];
//    [self.view removeConstraint:_LandscapeConstrainDW];
//    if (self.interfaceOrientation == UIInterfaceOrientationPortrait) {
//        
//        _LandscapeConstrainID =
//        [NSLayoutConstraint constraintWithItem:self.iconId
//                                     attribute:NSLayoutAttributeCenterX
//                                     relatedBy:NSLayoutRelationEqual
//                                        toItem:self.mainView
//                                     attribute:NSLayoutAttributeCenterX
//                                    multiplier:1
//                                      constant:0];
//        
//        _LandscapeConstrainDW =
//        [NSLayoutConstraint constraintWithItem:self.iconId
//                                     attribute:NSLayoutAttributeCenterY
//                                     relatedBy:NSLayoutRelationEqual
//                                        toItem:self.mainView
//                                     attribute:NSLayoutAttributeCenterY
//                                    multiplier:1
//                                      constant:0];
////
////        _LandscapeConstrainPS =
////        [NSLayoutConstraint constraintWithItem:self.iconPS
////                                     attribute:NSLayoutAttributeCenterY
////                                     relatedBy:0
////                                        toItem:nil
////                                     attribute:NSLayoutAttributeCenterY
////                                    multiplier:1
////                                      constant:0];
//
//        
//        
//    }
//    else
//    {
//        _LandscapeConstrainID =
//        [NSLayoutConstraint constraintWithItem:self.iconId
//                                     attribute:NSLayoutAttributeCenterY
//                                     relatedBy:NSLayoutRelationGreaterThanOrEqual
//                                        toItem:self.view
//                                     attribute:NSLayoutAttributeCenterY
//                                    multiplier:1
//                                      constant:0];
//        
//        _LandscapeConstrainDW =
//        [NSLayoutConstraint constraintWithItem:self.iconId
//                                     attribute:NSLayoutAttributeTop
//                                     relatedBy:NSLayoutRelationEqual
//                                        toItem:self.view
//                                     attribute:NSLayoutAttributeTop
//                                    multiplier:1
//                                      constant:90];
//        
////        _LandscapeConstrainDW =
////        [NSLayoutConstraint constraintWithItem:self.iconDw
////                                     attribute:NSLayoutAttributeCenterX
////                                     relatedBy:0
////                                        toItem:nil
////                                     attribute:NSLayoutAttributeCenterX
////                                    multiplier:1
////                                      constant:0];
////        
////        _LandscapeConstrainPS =
////        [NSLayoutConstraint constraintWithItem:self.iconPS
////                                     attribute:NSLayoutAttributeCenterX
////                                     relatedBy:0
////                                        toItem:nil
////                                     attribute:NSLayoutAttributeCenterX
////                                    multiplier:1
////                                      constant:0];
//    }
//    
//    [self.view addConstraints:@[_LandscapeConstrainID,_LandscapeConstrainDW]];
//    //    [self.view addConstraint:_LandscapeConstrainPS];
}

@end
