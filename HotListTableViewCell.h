//
//  HotListTableViewCell.h
//  HRMS
//
//  Created by cloudeeva2 on 4/1/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotListTableViewCell : UITableViewCell
@property (nonatomic, strong)  UILabel *nameLabel;
@property (nonatomic, strong)  UIButton *btnImg;
-(void)BtnCheckAction:(id)sender;
@end
