//
//  HotListViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "HotListViewController.h"
#import "HotListTableViewCell.h"
@interface HotListViewController ()

@end

@implementation HotListViewController

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
    [super viewDidLoad];
    UIColor * color = [UIColor colorWithRed:165/255.0f green:217/255.0f blue:235/255.0f alpha:1.0f];
    self.view.backgroundColor=color;

    self.navigationItem.title=@"Hotlist";
    tableVHotList=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-self.tabBarController.tabBar.frame.size.height-self.navigationController.navigationBar.frame.size.height) style:UITableViewStylePlain];
    tableVHotList.delegate=self;
    tableVHotList.dataSource=self;
    tableVHotList.separatorInset = UIEdgeInsetsZero;

    tableVHotList.rowHeight=50;
    [self.view addSubview:tableVHotList];
    [tableVHotList registerClass:[HotListTableViewCell class] forCellReuseIdentifier:@"HotListTableViewCell"];
    hotlistDetailVC=[[HotLDetailViewController alloc]initWithNibName:@"HotLDetailViewController" bundle:nil];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier = @"HotListTableViewCell";
   
    HotListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];

    if (cell == nil)
    {
        cell = [[HotListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.nameLabel.text = @"Consultant1";
    cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType==UITableViewCellAccessoryCheckmark) {
        cell.accessoryType=UITableViewCellAccessoryDetailDisclosureButton;
    }
    else
    {
        cell.accessoryType=UITableViewCellAccessoryCheckmark;
    }
}
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    [self.navigationController pushViewController:hotlistDetailVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
