//
//  ScreenEdgePanViewController.m
//  IOS7NewPerformance
//
//  Created by maolin on 14-2-18.
//  Copyright (c) 2014年 maolin. All rights reserved.
//

#import "ScreenEdgePanViewController.h"

@interface ScreenEdgePanViewController ()

@end

@implementation ScreenEdgePanViewController

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
    UIScreenEdgePanGestureRecognizer * screenEdgePanGestureRecognizer = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(edgePanGestureRecognizer:)];
    screenEdgePanGestureRecognizer.edges = UIRectEdgeRight;
    [self.view addGestureRecognizer:screenEdgePanGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)edgePanGestureRecognizer:(id)sender{
    UIScreenEdgePanGestureRecognizer * recognizer = (UIScreenEdgePanGestureRecognizer *)sender;
    NSString * msg = @"";
    if (recognizer.state == UIGestureRecognizerStatePossible) {
        msg = @"possible";
    }else if (recognizer.state == UIGestureRecognizerStateBegan) {
        msg = @"begin";
    }else if (recognizer.state == UIGestureRecognizerStateChanged) {
        msg = @"change";
    }else if (recognizer.state == UIGestureRecognizerStateEnded) {
        msg = @"end";
    }else if (recognizer.state == UIGestureRecognizerStateCancelled) {
        msg = @"cancel";
    }else if (recognizer.state == UIGestureRecognizerStateFailed) {
        msg = @"fail";
    }else if (recognizer.state == UIGestureRecognizerStateRecognized) {
        msg = @"recog";
    }
    UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"边缘手势" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
}

@end
