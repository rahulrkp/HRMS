//
//  HotListViewController.h
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotLDetailViewController.h"
#import "HotListTableViewCell.h"
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface HotListViewController : UIViewController<TouchDelegateForCell1,UITableViewDataSource,UITableViewDelegate,MFMailComposeViewControllerDelegate>
{
    UITableView *tableVHotList;
    HotLDetailViewController *hotlistDetailVC;
    NSMutableArray *arrCheckCells;
    UIBarButtonItem *barButtonR;
    UIButton *btnMail;
}
@end
