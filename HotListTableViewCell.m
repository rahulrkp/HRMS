//
//  HotListTableViewCell.m
//  HRMS
//
//  Created by cloudeeva2 on 4/1/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "HotListTableViewCell.h"

@implementation HotListTableViewCell
@synthesize nameLabel = _nameLabel;
@synthesize btnImg = _btnImg;

- (void)awakeFromNib
{
    // Initialization code
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self.btnImg setBackgroundImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(IBAction)BtnCheckAction:(id)sender
{
    UIButton *btn=(UIButton*)sender;
    if ([btn backgroundImageForState:UIControlStateNormal]==[UIImage imageNamed:@"checked.png"]) {
        [btn setBackgroundImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];
    }
    else
    {
        [btn setBackgroundImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateNormal];

    }
}

@end
