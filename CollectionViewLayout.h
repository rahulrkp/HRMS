//
//  CollectionViewLayout.h
//  HRMS
//
//  Created by cloudeeva2 on 4/4/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewLayout : UICollectionViewFlowLayout
{
    UICollectionViewScrollDirection scrollDirection;
}
@property (nonatomic) UICollectionViewScrollDirection scrollDirection;

-(UICollectionViewScrollDirection) scrollDirection;
@end
