//
//  CollectionViewController.h
//  HRMS
//
//  Created by cloudeeva2 on 4/4/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotListViewController.h"
#import "InterviewsViewController.h"
#import "SalesViewController.h"
#import "ReportsViewController.h"

@interface CollectionViewController : UICollectionViewController
{
    NSArray *titleList;
}
@property (strong, nonatomic) HotListViewController *hotListVC;
@property (strong, nonatomic) InterviewsViewController *interviewVC;
@property (strong, nonatomic) SalesViewController *salesVC;
@property (strong, nonatomic) ReportsViewController *reportVC;

@end
