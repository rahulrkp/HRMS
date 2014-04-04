//
//  CollectionViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 4/4/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "CollectionViewController.h"
#import "Cell.h"
#import "CollectionViewLayout.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

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
    [self.collectionView registerClass:[Cell class] forCellWithReuseIdentifier:@"MY_CELL"];
    titleList=[[NSArray alloc]initWithObjects:@"Hotlist",@"Interviews",@"Sales Team",@"Reports", nil];
    UIColor * color = [UIColor colorWithRed:165/255.0f green:217/255.0f blue:235/255.0f alpha:1.0f];
    self.collectionView.backgroundColor = color;

    self.navigationItem.title=@"CollectionView";

    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    return titleList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"MY_CELL" forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"%@",[titleList objectAtIndex:indexPath.row]];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            self.hotListVC=[[HotListViewController alloc]init];
            [self.navigationController pushViewController:self.hotListVC animated:YES];
            break;
        case 1:
            self.interviewVC=[[InterviewsViewController alloc]init];

            [self.navigationController pushViewController:self.interviewVC animated:YES];
            break;
        case 2:
            self.salesVC=[[SalesViewController alloc]init];
            [self.navigationController pushViewController:self.salesVC animated:YES];
            break;
        case 3:
            self.reportVC=[[ReportsViewController alloc]init];

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
