//
//  ReportsViewController.h
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReportsViewController : UIViewController<UIDocumentInteractionControllerDelegate,UIWebViewDelegate>
@property (nonatomic, strong) UIDocumentInteractionController *documentInteractionController;

@end
