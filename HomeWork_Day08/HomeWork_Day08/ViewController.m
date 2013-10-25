//
//  ViewController.m
//  HomeWork_Day08
//
//  Created by PHUPN-MAC on 10/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController.h"
#import "PresentModalView.h"
@interface ViewController ()

@end

@implementation ViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)PresentModalView:(id)sender {
    PresentModalView *PresentVC = [[PresentModalView alloc] initWithNibName:@"PresentVC" bundle:nil];
    [self presentViewController:PresentVC animated:YES completion:^{
        
    }];
}
- (IBAction)demoIphone:(id)sender {
    PresentModalView *PresentVC = [[PresentModalView alloc] initWithNibName:@"PresentVC" bundle:nil];
    [self presentViewController:PresentVC animated:YES completion:^{
        
    }];
}

@end
