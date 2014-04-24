//
//  TelephonyNetworkViewController.m
//  IOS7NewPerformance
//
//  Created by maolin on 14-2-19.
//  Copyright (c) 2014年 maolin. All rights reserved.
//

#import "TelephonyNetworkViewController.h"
#import <CoreTelephony/CTTelephonyNetworkInfo.h>

@interface TelephonyNetworkViewController ()

@end

@implementation TelephonyNetworkViewController

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
    CTTelephonyNetworkInfo * teleNetworkInfo = [[CTTelephonyNetworkInfo alloc]init];
    NSLog(@"current connection is :%@",teleNetworkInfo.currentRadioAccessTechnology);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
