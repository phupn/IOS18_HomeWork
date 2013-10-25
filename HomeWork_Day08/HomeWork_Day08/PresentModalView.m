//
//  PresentModalView.m
//  HomeWork_Day08
//
//  Created by PHUPN-MAC on 10/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "PresentModalView.h"

@interface PresentModalView ()

@end

@implementation PresentModalView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
