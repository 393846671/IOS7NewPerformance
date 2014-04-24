//
//  BarTintColorViewController.m
//  IOS7NewPerformance
//
//  Created by maolin on 14-2-17.
//  Copyright (c) 2014年 maolin. All rights reserved.
//

#import "BarTintColorViewController.h"

@interface BarTintColorViewController ()

@end

@implementation BarTintColorViewController

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
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0.0f, 88.0f, 200.0f, 80.0f);
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn setTitle:@"123" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
