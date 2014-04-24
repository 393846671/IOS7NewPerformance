//
//  ScrollKeyboardDismissViewController.m
//  IOS7NewPerformance
//
//  Created by maolin on 14-2-18.
//  Copyright (c) 2014年 maolin. All rights reserved.
//

#import "ScrollKeyboardDismissViewController.h"

@interface ScrollKeyboardDismissViewController ()

@end

@implementation ScrollKeyboardDismissViewController

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
    UIScrollView * scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.contentSize  = CGSizeMake(scrollView.bounds.size.width, 2*scrollView.bounds.size.height);
    scrollView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:scrollView];
    UITextField * textField =  [[UITextField alloc]initWithFrame:CGRectMake(40.0f, 400.0f, 140.0f, 40.0f)];
    textField.backgroundColor = [UIColor orangeColor];
    [scrollView addSubview:textField];
    scrollView.keyboardDismissMode = UIScrollViewKeyboardDismissModeInteractive;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
