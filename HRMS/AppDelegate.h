//
//  AppDelegate.h
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"
#import "HomeViewController.h"
#import "ContactsViewController.h"
#import "LogOutViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>
{
    
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) LoginViewController *loginVC;
@property (strong, nonatomic) HomeViewController *homeVC;
@property (strong, nonatomic) ContactsViewController *contactsVC;
@property (strong, nonatomic) LogOutViewController *logOutVC;
@property (strong, nonatomic) UITabBarController *tabBarVC;
@property (strong, nonatomic) UINavigationController *navVCHome;

@end
