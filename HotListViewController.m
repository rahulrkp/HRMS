//
//  HotListViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "HotListViewController.h"
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
    arrCheckCells=[[NSMutableArray alloc]init];
    self.navigationItem.title=@"Hotlist";
    tableVHotList=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-self.tabBarController.tabBar.frame.size.height-self.navigationController.navigationBar.frame.size.height) style:UITableViewStylePlain];
    tableVHotList.delegate=self;
    tableVHotList.dataSource=self;
    tableVHotList.separatorInset = UIEdgeInsetsZero;

    tableVHotList.rowHeight=50;
    [self.view addSubview:tableVHotList];
    [tableVHotList registerClass:[HotListTableViewCell class] forCellReuseIdentifier:@"HotListTableViewCell"];
    hotlistDetailVC=[[HotLDetailViewController alloc]initWithNibName:@"HotLDetailViewController" bundle:nil];

    btnMail = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnMail.frame = CGRectMake(0, 0, 25, 25);
    [btnMail setBackgroundImage:[UIImage imageNamed:@"mail-icon.png"] forState:UIControlStateNormal];
    [btnMail addTarget:self action:@selector(SendMailAction:) forControlEvents:UIControlEventTouchUpInside];
    
    barButtonR=[[UIBarButtonItem alloc] initWithCustomView:btnMail];
    self.navigationItem.rightBarButtonItem = barButtonR;
    btnMail.hidden=TRUE;
}
-(void)BtnCheckAction:(id)sender
{
    NSLog(@"sender=%@",[sender superview]);
    UIButton *btn=(UIButton*)sender;
    
    HotListTableViewCell *clickedCell = (HotListTableViewCell*)[[sender superview] superview];
    NSIndexPath *indexPathCell = [tableVHotList indexPathForCell:clickedCell];
    NSLog(@"clickedCell=%@",indexPathCell.description);
    if ([arrCheckCells containsObject:indexPathCell]) {
        [btn setBackgroundImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];
        [arrCheckCells removeObject:indexPathCell];
    }
    else
    {
        [btn setBackgroundImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateNormal];
        [arrCheckCells addObject:indexPathCell];
    }
    if (arrCheckCells.count>0) {
        btnMail.hidden=FALSE;
    }
    else if ((arrCheckCells.count<1))
    {
        btnMail.hidden=TRUE;
    }
}

#pragma mark - EMAIL

- (void)SendMailAction:(id)sender {
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];

    // Email Subject
    NSString *emailTitle = @"Consultant Profiles";
    // Email Content
    NSString *messageBody = @"A-Z list of profiles for consultants";
    // To address
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *txtFilePath = [documentsDirectory stringByAppendingPathComponent:@"resume_template.doc"];
    NSData *noteData = [NSData dataWithContentsOfFile:txtFilePath];

    NSMutableArray *arrMails=[[NSMutableArray alloc]init];
    for (NSIndexPath *indx in arrCheckCells) {
        NSString *strName=[NSString stringWithFormat:@"Consultant-%d@cloudeeva.com",indx.row+1];
        [arrMails addObject:strName];
        [mailComposer addAttachmentData:noteData mimeType:@"application/doc" fileName:[NSString stringWithFormat:@"%@.doc",strName]];

    }
    NSArray *toRecipents = (NSArray*)arrMails;
    
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:emailTitle];
    [mailComposer setMessageBody:messageBody isHTML:NO];
    [mailComposer setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mailComposer animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}
#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier = @"HotListTableViewCell";
   
    HotListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];

    if (cell == nil)
    {
        cell = [[HotListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    [cell.btnImg addTarget:self action:@selector(BtnCheckAction:) forControlEvents:UIControlEventTouchUpInside];
    
    cell.nameLabel.text = [NSString stringWithFormat:@"Consultant-%d",indexPath.row+1];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    if ([arrCheckCells containsObject:indexPath]) {
        [cell.btnImg setBackgroundImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateNormal];
    }
    else
    {
        [cell.btnImg setBackgroundImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];
    }


    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.navigationController pushViewController:hotlistDetailVC animated:YES];
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
