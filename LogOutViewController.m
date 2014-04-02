//
//  LogOutViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 4/1/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "LogOutViewController.h"
#import "AppDelegate.h"
@interface LogOutViewController ()

@end

@implementation LogOutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    //appDelegate.window.rootViewController=appDelegate.loginVC;
}
- (void)viewDidLoad
{
    appDelegate=(AppDelegate*)[[UIApplication sharedApplication]delegate];

    [super viewDidLoad];
    UIColor * color = [UIColor colorWithRed:165/255.0f green:217/255.0f blue:235/255.0f alpha:1.0f];
    self.view.backgroundColor=color;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
