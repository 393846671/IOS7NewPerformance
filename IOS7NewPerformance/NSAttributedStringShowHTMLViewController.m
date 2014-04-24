//
//  NSAttributedStringShowHTMLViewController.m
//  IOS7NewPerformance
//
//  Created by maolin on 14-2-18.
//  Copyright (c) 2014年 maolin. All rights reserved.
//

#import "NSAttributedStringShowHTMLViewController.h"

@interface NSAttributedStringShowHTMLViewController ()

@end

@implementation NSAttributedStringShowHTMLViewController

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
    NSString * html = @"<html><body><h3>haha</h3><h4>wahaha</h4></body></html>";
    NSDictionary * options = @{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType};
    NSAttributedString * attrString = [[NSAttributedString alloc]initWithData:[html dataUsingEncoding:NSUTF8StringEncoding] options:options documentAttributes:nil error:nil];
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(40.0f, 100.0f, 200.0f, 200.0f)];
    label.attributedText = attrString;
    self.view.backgroundColor = [UIColor whiteColor];
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
