//
//  HotListTableViewCell.h
//  HRMS
//
//  Created by cloudeeva2 on 4/1/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouchDelegateForCell1 <NSObject>

- (void)touchedTheCell:(UIButton *)button;

@end

@interface HotListTableViewCell : UITableViewCell
@property (nonatomic, strong)  UILabel *nameLabel;
@property (nonatomic, strong)  UIButton *btnImg;
@property(nonatomic, assign)id<TouchDelegateForCell1> delegate; //defining the delegate

-(void)BtnCheckAction:(UIButton*)sender;
@end
