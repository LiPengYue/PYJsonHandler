//
//  PYDescriptionViewController.m
//  PYJsonViewManager_Example
//
//  Created by 衣二三 on 2019/8/27.
//  Copyright © 2019 LiPengYue. All rights reserved.
//

#import "PYDescriptionViewController.h"
#import <WebKit/WebKit.h>

@interface PYDescriptionViewController()
@property(nonatomic,strong) WKWebView *webView;
@end

@implementation PYDescriptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadNetWork];
    [self setupViews];
    [self registerEvents];
    [self setupNav];
}
// MARK: - init


#pragma mark - func

// MARK: setupTable

// MARK: network
- (void) loadNetWork {
    
}
// MARK: handle views
- (void) setupViews {
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, PYSize.navTotalH, PYSize.screenW, PYSize.screen_navH)];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"JsonHandlerDescriptionPDF.pdf" withExtension:nil];
    [self.webView loadFileURL:url allowingReadAccessToURL:url];
    [self.view addSubview:self.webView];
    
}

- (void) setupNav {
    self.navBarView.addTitleItemWithTitleAndImg(@"jsonHandler",nil);
    self.navBarView.addLeftItemWithTitleAndImg(@"返回",nil);
    [self.navBarView reloadView];
}
// MARK: handle event
- (void) registerEvents {
    
}
// MARK: lazy loads

// MARK: systom functions

// MARK:life cycles


@end

