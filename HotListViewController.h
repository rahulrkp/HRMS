//
//  HotListViewController.h
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotLDetailViewController.h"

@interface HotListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *tableVHotList;
    HotLDetailViewController *hotlistDetailVC;
}
@end
