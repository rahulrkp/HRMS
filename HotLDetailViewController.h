//
//  HotLDetailViewController.h
//  HRMS
//
//  Created by cloudeeva2 on 4/2/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotLDetailViewController : UIViewController<UIDocumentInteractionControllerDelegate>
@property (nonatomic, strong) UIDocumentInteractionController *documentInteractionController;
- (IBAction)previewDocument:(id)sender ;

@end
