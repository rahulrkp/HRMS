//
//  AppDelegate.m
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.loginVC=[[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    self.homeVC=[[HomeViewController alloc]init];
    self.contactsVC=[[ContactsViewController alloc]init];
    self.logOutVC=[[LogOutViewController alloc]init];

    self.navVCHome=[[UINavigationController alloc]initWithRootViewController:self.homeVC];
    self.navVCContact=[[UINavigationController alloc]initWithRootViewController:self.contactsVC];
    UIColor * color = [UIColor colorWithRed:50/255.0f green:134/255.0f blue:221/255.0f alpha:1.0f];
    self.navVCHome.navigationBar.barTintColor= color;
    self.navVCContact.navigationBar.barTintColor= color;
    self.tabBarVC=[[UITabBarController alloc]init];
    self.tabBarVC.delegate=self;
    NSArray *arrViews=[[NSArray alloc]initWithObjects:self.navVCHome,self.navVCContact,self.logOutVC, nil];
    self.tabBarVC.viewControllers=arrViews;
    
    self.navVCHome.tabBarItem.title=@"Home";
    self.navVCContact.tabBarItem.title=@"Contacts";
    self.logOutVC.tabBarItem.title=@"Logout";

    self.navVCHome.tabBarItem.image=[UIImage imageNamed:@"Home-icon.png"];
    self.navVCContact.tabBarItem.image=[UIImage imageNamed:@"contact-icon.png"];
    self.logOutVC.tabBarItem.image=[UIImage imageNamed:@"Logout-icon.png"];

    self.tabBarVC.tabBar.barTintColor= color;
    self.tabBarVC.tabBar.tintColor= [UIColor whiteColor];
    self.navVCContact.navigationBar.tintColor= [UIColor whiteColor];
    self.navVCHome.navigationBar.tintColor= [UIColor whiteColor];

    self.window.rootViewController=self.loginVC;
    self.tabBarVC.selectedIndex=0;
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (viewController==self.logOutVC) {
        self.window.rootViewController=self.loginVC;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
