//
//  InterviewsViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "InterviewsViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface InterviewsViewController ()

@end

@implementation InterviewsViewController

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
    self.navigationItem.title=@"Interviews";
    [super viewDidLoad];
    UIColor * color = [UIColor colorWithRed:165/255.0f green:217/255.0f blue:235/255.0f alpha:1.0f];
    self.view.backgroundColor=color;
    tableVInterV=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-self.tabBarController.tabBar.frame.size.height-self.navigationController.navigationBar.frame.size.height) style:UITableViewStylePlain];
    tableVInterV.delegate=self;
    tableVInterV.dataSource=self;
    tableVInterV.rowHeight=100;
    tableVInterV.separatorInset = UIEdgeInsetsZero;

    [self.view addSubview:tableVInterV];

    // Do any additional setup after loading the view from its nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
//    cell.backgroundColor = [UIColor clearColor];

    cell.detailTextLabel.backgroundColor = [UIColor whiteColor];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = @"Rahul Patel";
    cell.detailTextLabel.text = @" I would be really glad to meet Mt. xxxxx and Mr. yyyyyy in gurgaon office from 5:00 pm";
    cell.detailTextLabel.numberOfLines=4;
    cell.detailTextLabel.backgroundColor=[UIColor whiteColor];
    cell.detailTextLabel.textAlignment=NSTextAlignmentLeft;
    UIColor * color = [UIColor colorWithRed:165/255.0f green:217/255.0f blue:235/255.0f alpha:1.0f];
    cell.contentView.backgroundColor=color;
    cell.detailTextLabel.layer.cornerRadius=8;
    [cell.detailTextLabel.layer setMasksToBounds:YES];
    [cell.detailTextLabel.layer setBorderWidth:0.1];
    //[cell.detailTextLabel.layer setBorderColor:[[UIColor darkGrayColor] CGColor]];
    //cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
