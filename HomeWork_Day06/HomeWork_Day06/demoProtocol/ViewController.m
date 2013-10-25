//
//  ViewController.m
//  demoProtocol
//
//  Created by techmaster on 9/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"
#import "stdio.h"
@interface ViewController ()

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

-(void) print
{
    int i, nos = 5;
    for (i = 1; i<= 4; i++) {
        [self triangle:nos :i];
        nos ++;
        printf("\n");
    }
    nos = 7;
    for (i = 3; i >= 1; i--) {
        int j = 1;
        [self triangle:nos :i];
        nos = nos - j;
        printf("\n");
    }
    
    
}

-(int)triangle : (int) nos : (int) i
{
    char pchar ='*';
    int s, j;
    for (s = nos; s>=1; s--) {
        printf("  ");
    }
    for (j = 1; j<=i; j++) {
        printf("%2c",pchar);
    }
    return 0;
}

-(void)draw
{
    char prnt = '*';
    int i, j, k, s, nos = 4;
    for (i = 1; i <= 5; i++) { for (s = nos; s >= 1; s--) {
        printf("  ");
    }
        for (j = 1; j <= i; j++) {
            printf("%2c", prnt);
        }
        for (k = 1; k <= (i - 1); k++) { if (i == 1) {     continue; } printf("%2c", prnt); }  printf("\n");   nos--; }  nos = 1; for (i = 4; i >= 1; i--) {
            for (s = nos; s >= 1; s--) {
                printf("  ");
            }
            for (j = 1; j <= i; j++) {
                printf("%2c", prnt);
            }
            for (k = 1; k <= (i - 1); k++) {
                printf("%2c", prnt);
            }
            nos++;
            printf("\n");
        }
    nos = 3;
    for (i = 2; i <= 5; i++) { if ((i % 2) != 0) { for (s = nos; s >= 1; s--) {
        printf("  ");
    }
        for (j = 1; j <= i; j++) {
            printf("%2c", prnt);
        }
    }
        if ((i % 2) != 0) {
            printf("\n");
            nos--;
        }
    }
}


- (IBAction)Printd:(id)sender {
    
    [self print];
    [self draw];
}

@end
