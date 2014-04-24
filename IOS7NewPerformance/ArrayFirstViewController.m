//
//  ArrayFirstViewController.m
//  IOS7NewPerformance
//
//  Created by maolin on 14-2-17.
//  Copyright (c) 2014年 maolin. All rights reserved.
//

#import "ArrayFirstViewController.h"

@interface ArrayFirstViewController ()

@end

@implementation ArrayFirstViewController

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
	// Do any additional setup after loading the view.
    NSArray * array = @[@"1",@"2",@"3",@"4",@"5"];
    NSLog(@"nsarry firstObject : %@",[array firstObject]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
