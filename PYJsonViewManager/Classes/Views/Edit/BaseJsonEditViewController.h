//
//  BaseJsonViewManager.h
//  PYKit
//
//  Created by 李鹏跃 on 2019/9/11.
//  Copyright © 2019年 13lipengyue. All rights reserved.
//


#import <PYBaseView/PYBaseView.h>
#import "BaseJsonViewStepModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseJsonEditViewController : PYBaseViewController

@property (nonatomic,strong) BaseJsonViewStepModel *originModel;
- (BaseJsonViewStepModel *) getChangedModel;
@end

NS_ASSUME_NONNULL_END
