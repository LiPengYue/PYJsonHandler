//
//  PYMainViewController.m
//  PYJsonViewManager_Example
//
//  Created by 衣二三 on 2019/8/27.
//  Copyright © 2019 LiPengYue. All rights reserved.
//

#import "PYMainViewController.h"
#import <PYBaseView.h>
#import "PYDescriptionViewController.h"

@interface PYMainViewController ()


@property (nonatomic,strong) PYBaseButton *goDescription;
@property (nonatomic,strong) PYBaseButton *goDemo;
@end


@implementation PYMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.goDemo];
    [self.view addSubview:self.goDescription];
    
    self.goDemo.frame = CGRectMake(10, 100, 200, 100);
    self.goDescription.frame = CGRectMake(10, 310, 200, 100);
    [self.goDemo setupHandler:^(PYBaseButtonHandler * _Nonnull handler) {
        [handler adjustButtonStyleWithState:0];
    }];
    [self.goDescription setupHandler:^(PYBaseButtonHandler * _Nonnull handler) {
        [handler adjustButtonStyleWithState:0];
    }];
    self.goDescription.contentVerticalAlignment = UIControlContentVerticalAlignmentBottom;
}

- (PYBaseButton *)goDemo {
    if (!_goDemo) {
        _goDemo = [PYBaseButton new];
        [_goDemo setupHandler:^(PYBaseButtonHandler * _Nonnull handler) {
            [handler setUpStyle:0 style:^(PYBaseButtonHandler *handler) {
                
                handler
                .setUpBorderColor(UIColor.redColor)
                .setUpTitleColor(UIColor.redColor)
                .setUpTitle(@"点我跳demo")
                .setUpBorderWidth(1);
            }];
        }];
        [_goDemo addTarget:self action:@selector(click_goDemoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goDemo;
}

- (void)click_goDemoButton {
    
}

- (PYBaseButton *)goDescription {
    if (!_goDescription) {
        _goDescription = [PYBaseButton new];
        
        [_goDescription setupHandler:^(PYBaseButtonHandler * _Nonnull handler) {
            [handler setUpStyle:0 style:^(PYBaseButtonHandler *handler) {
                handler
                .setUpTitleColor(UIColor.redColor)
                .setUpBorderColor(UIColor.redColor)
                .setUpTitle(@"点我跳说明")
                .setUpBorderWidth(1);
            }];
        }];
        [_goDescription addTarget:self action:@selector(click_goDescriptionButton) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goDescription;
}
- (void)click_goDescriptionButton {
    PYDescriptionViewController *vc = [PYDescriptionViewController new];
    [self.navigationController pushViewController:vc animated:true];
}
@end
