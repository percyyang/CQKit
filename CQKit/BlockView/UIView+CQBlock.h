//
//  UIView+CQBlock.h
//  CQKit
//
//  Created by 蔡强 on 2017/10/18.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CQBlock)

/**
 与单击手势绑定的block
 
 @param tappedBlock 单击手势事件回调的block
 */
- (void)cq_whenTapped:(void(^)(void))tappedBlock;

@end
