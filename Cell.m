//
//  Cell.m
//  HRMS
//
//  Created by cloudeeva2 on 4/4/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, frame.size.width, frame.size.height)];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.textColor = [UIColor blackColor];
        self.label.font = [UIFont boldSystemFontOfSize:18.0];
        self.label.backgroundColor = [UIColor whiteColor];
     
        [self.contentView addSubview:self.label];;
    }
    return self;
}

@end