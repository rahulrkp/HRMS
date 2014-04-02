//
//  LoginViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)LoginAction:(id)sender
{
    appDelegate.window.rootViewController=appDelegate.tabBarVC;
    appDelegate.tabBarVC.selectedIndex=0;
    NSLog(@"Login");
}

- (void)viewDidLoad
{
    appDelegate=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
