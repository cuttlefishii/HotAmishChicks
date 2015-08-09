//
//  HomeViewController.m
//  HotAmishChicks
//
//  Created by Genevieve Rush on 8/8/15.
//  Copyright (c) 2015 CuttlefishCreations. All rights reserved.
//  written in like 3 hours because 'tis the GisHWheS way

#import "HomeViewController.h"
#import "ChickViewController.h"

@interface HomeViewController ()
@property (strong, nonatomic) IBOutlet UIButton *chickMagnet;

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        cvc = [[ChickViewController alloc] initWithNibName:@"ChickViewController" bundle:nil];
    }
    return self;
}
- (IBAction)onClick:(id)sender {
    [self.navigationController pushViewController:cvc animated:NO];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
