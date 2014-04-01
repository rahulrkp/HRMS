//
//  LoginViewController.h
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppDelegate;
@interface LoginViewController : UIViewController
{
    IBOutlet UITextField *textFName,*textFPasswd;
    AppDelegate *appDelegate;
}
-(IBAction)LoginAction:(id)sender;
@end
