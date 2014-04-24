//
//  MPVolumeViewController.m
//  IOS7NewPerformance
//
//  Created by maolin on 14-2-18.
//  Copyright (c) 2014年 maolin. All rights reserved.
//

#import "MPVolumeViewController.h"
#import <MediaPlayer/MediaPlayer.h>
@interface MPVolumeViewController ()

@end

@implementation MPVolumeViewController

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
    MPVolumeView * volumeView = [[MPVolumeView alloc]init];
    if (volumeView.wirelessRouteActive) {
        UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"链接提示" message:@"链接了wifi" delegate:self cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil];
        [alertView show];
    }else {
        UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"链接提示" message:@"没连上wifi" delegate:self cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil];
        [alertView show];

    }
    if (volumeView.wirelessRoutesAvailable) {
        UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"wifi提示" message:@"附近有可用的wifi" delegate:self cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil];
        [alertView show];
    }else {
        UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"wifi提示" message:@"没有可用wifi" delegate:self cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil];
        [alertView show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
