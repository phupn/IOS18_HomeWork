//
//  ViewController.m
//  tesst
//
//  Created by PHUPN-MAC on 10/28/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView* imageview = [UIView new];
    imageview.backgroundColor = [UIColor blueColor];
    imageview.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIView* button = [UIView new];
    button.backgroundColor = [UIColor greenColor];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    UIView* spacer1 = [UIView new];
    spacer1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent: 0.5];
    spacer1.translatesAutoresizingMaskIntoConstraints = NO;
    spacer1.hidden = YES; // comment out to show spacer!
    
    UIView* spacer2 = [UIView new];
    spacer2.backgroundColor = [[UIColor redColor] colorWithAlphaComponent: 0.5];
    spacer2.translatesAutoresizingMaskIntoConstraints = NO;
    spacer2.hidden = YES; // comment out to show spacer!
    
    [self.view addSubview: imageview];
    [self.view addSubview: button];
    [self.view addSubview: spacer1];
    [self.view addSubview: spacer2];
    
    NSDictionary* views = NSDictionaryOfVariableBindings( imageview, button, spacer1, spacer2 );
    
    NSArray* constraints;
    constraints = [NSLayoutConstraint constraintsWithVisualFormat: @"V:|[spacer1(==spacer2)][imageview(360)]-30-[button(70)][spacer2(==spacer1)]|"
                                                          options: 0
                                                          metrics: nil
                                                            views: views];
    [self.view addConstraints: constraints];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageview
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:300]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:210]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageview
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:
                                                         multiplier:1
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:button
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1
                                                           constant:0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
