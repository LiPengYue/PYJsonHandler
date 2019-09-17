//
//  DebugNetWorkViewController.m
//  Test
//
//  Created by 衣二三 on 2019/3/27.
//  Copyright © 2019年 衣二三. All rights reserved.
//

#import "DebugNetWorkViewController.h"
#import "BaseJsonViewManager.h"
#import "BaseJsonViewStepModel.h"
#import "BaseJsonViewTableView.h"
#import "PYJsonString.h"

@interface DebugNetWorkViewController ()
@end

@implementation DebugNetWorkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self load_netWork];
    [self setup_views];
    [self register_events];
}

// MARK: - init

#pragma mark - func
// MARK: network
- (void) load_netWork {
    [self reloadDataWithID:PYJsonString.sinaJsonStr];
}
// MARK: handle views
- (void) setup_views {

}
// MARK: handle event
- (void) register_events {
    
}

- (void) setJson: (NSString *) json withURL: (NSString *)url {
    if (url.length <= 0) {
        NSLog(@"\n json 缓存失败，无对应的url");
        return;
    }
}

// MARK: lazy loads


// MARK: systom functions

// MARK:life cycles


@end
