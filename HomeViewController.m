//
//  HomeViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    self.navigationItem.title=@"Cloudeeva";

    self.hotListVC=[[HotListViewController alloc]init];
    self.interviewVC=[[InterviewsViewController alloc]init];
    self.salesVC=[[SalesViewController alloc]init];
    self.reportVC=[[ReportsViewController alloc]init];
    titleList=[[NSArray alloc]initWithObjects:@"Hotlist",@"Interviews",@"Sales Team",@"Reports", nil];
    tableVHome=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableVHome.delegate=self;
    tableVHome.dataSource=self;
    [self.view addSubview:tableVHome];
    
    // Do any additional setup after loading the view from its nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return titleList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [titleList objectAtIndex:indexPath.row];
    cell.textLabel.font=[UIFont boldSystemFontOfSize:22];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.textAlignment=NSTextAlignmentCenter;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:self.hotListVC animated:YES];
            break;
        case 1:
            [self.navigationController pushViewController:self.interviewVC animated:YES];
            break;
        case 2:
            [self.navigationController pushViewController:self.salesVC animated:YES];
            break;
        case 3:
            [self.navigationController pushViewController:self.reportVC animated:YES];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
