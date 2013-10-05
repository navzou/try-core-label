//
//  ViewController.m
//  CoreLabel
//
//  Created by navzou on 10/5/13.
//  Copyright (c) 2013 navzou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initLabel
{
    NSInteger labelWidth = 180;
    NSInteger labelHeight = 30;
    NSInteger labelX = (self.view.frame.size.width / 2) - (labelWidth / 2);
    NSInteger labelY = (self.view.frame.size.height / 2) - (labelHeight / 2);
    CGRect rect = CGRectMake(labelX, labelY, labelWidth, labelHeight);
    UILabel *myLabel = [[UILabel alloc] initWithFrame:rect];
    myLabel.text = NSLocalizedString(@"Sample", nil);
    myLabel.font = [UIFont fontWithName:@"Helvetica" size:12];
    myLabel.textColor = [UIColor whiteColor];
    myLabel.shadowColor = [UIColor grayColor];
    myLabel.shadowOffset = CGSizeMake(0.5, 0.5);
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.numberOfLines = 0;
    myLabel.backgroundColor = [UIColor blackColor];
    [[myLabel layer] setCornerRadius:8.0];
    [myLabel setClipsToBounds:YES];
    [self.view addSubview:myLabel];
}

@end
