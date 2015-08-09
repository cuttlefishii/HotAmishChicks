//
//  ChickViewController.m
//  HotAmishChicks
//
//  Created by Genevieve Rush on 8/8/15.
//  Copyright (c) 2015 CuttlefishCreations. All rights reserved.
//  written in like 3 hours because 'tis the GisHWheS way

#import "ChickViewController.h"
#import <UIKit/UIKit.h>

@interface ChickViewController ()

@end

@implementation ChickViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    CGRect frame = self.view.frame;
    float imgFrame = frame.size.height / frame.size.width;
    frame.size.width = [[UIScreen mainScreen] bounds].size.width;
    frame.size.height = frame.size.width * imgFrame;
    int kale = arc4random_uniform(18) + 1;
    NSString *dinomite = [[NSString alloc] initWithFormat:@"%i.jpg", kale];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 180, frame.size.width, 192)];
    imageView.image = [UIImage imageNamed:dinomite];
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
