//
//  HotListTableViewCell.m
//  HRMS
//
//  Created by cloudeeva2 on 4/1/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "HotListTableViewCell.h"

@implementation HotListTableViewCell
@synthesize nameLabel ;
@synthesize btnImg;
@synthesize delegate; //synthesize the delegate

- (void)awakeFromNib
{
    // Initialization code
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.nameLabel=[[UILabel alloc]initWithFrame:CGRectMake(50, 0, 200, 50)];
        self.nameLabel.text=@"";
        [self addSubview:self.nameLabel];
        self.btnImg=[UIButton buttonWithType:UIButtonTypeCustom];
        self.btnImg.frame=CGRectMake(0, 10, 30, 30);
        //[self.btnImg addTarget:self action:@selector(BtnCheckAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btnImg];
        //[self.btnImg setBackgroundImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)BtnCheckAction:(UIButton*)sender
{
    NSLog(@"sender=%@",sender);
    if([self.delegate respondsToSelector:@selector(touchedTheCell:)])
    {
        [self.delegate touchedTheCell:sender]; //or u can send the whole cell itself
    }

//    UIButton *btn=(UIButton*)sender;
//    if ([btn backgroundImageForState:UIControlStateNormal]==[UIImage imageNamed:@"checked.png"]) {
//        [btn setBackgroundImage:[UIImage imageNamed:@"unchecked.png"] forState:UIControlStateNormal];
//    }
//    else
//    {
//        [btn setBackgroundImage:[UIImage imageNamed:@"checked.png"] forState:UIControlStateNormal];
//    }
}

@end
