//
//  ReportsViewController.m
//  HRMS
//
//  Created by cloudeeva2 on 3/31/14.
//  Copyright (c) 2014 cloudeeva. All rights reserved.
//

#import "ReportsViewController.h"

@interface ReportsViewController ()

@end

@implementation ReportsViewController

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
    self.navigationItem.title=@"Reports";
    [super viewDidLoad];
    UIColor * color = [UIColor colorWithRed:165/255.0f green:217/255.0f blue:235/255.0f alpha:1.0f];
    self.view.backgroundColor=color;
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    webView.multipleTouchEnabled=TRUE;
    webView.delegate=self;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"graph" ofType:@"png"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
    
    [self.view addSubview:webView];
}
- (IBAction)previewDocument:(id)sender {
    NSURL *URL = [[NSBundle mainBundle] URLForResource:@"graph" withExtension:@"png"];
    
    if (URL) {
        self.documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:URL];
        [self.documentInteractionController setDelegate:self];
        [self.documentInteractionController presentPreviewAnimated:YES];
    }
}
- (UIViewController *) documentInteractionControllerViewControllerForPreview: (UIDocumentInteractionController *) controller {
    return self;
}
- (void)webViewDidFinishLoad:(UIWebView *)theWebView
{
    CGSize contentSize = theWebView.scrollView.contentSize;
    CGSize viewSize = self.view.bounds.size;
    
    float rw = viewSize.width / contentSize.width;
    
    theWebView.scrollView.minimumZoomScale = rw;
    theWebView.scrollView.maximumZoomScale = rw;
    theWebView.scrollView.zoomScale = rw;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
