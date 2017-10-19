//
//  UIView+CQBlock.m
//  CQKit
//
//  Created by 蔡强 on 2017/10/18.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import "UIView+CQBlock.h"
#import <objc/runtime.h>

typedef void(^CQ_ViewTappedBlock)(void);

@interface UIView ()

/** 单击手势事件回调的block */
@property (nonatomic, copy) CQ_ViewTappedBlock cq_viewTappedBlock;

@end

@implementation UIView (CQBlock)

//------- 添加属性 -------//

static void *cq_viewTappedBlockKey = &cq_viewTappedBlockKey;

- (CQ_ViewTappedBlock)cq_viewTappedBlock {
    return objc_getAssociatedObject(self, &cq_viewTappedBlockKey);
}

- (void)setCq_viewTappedBlock:(CQ_ViewTappedBlock)cq_viewTappedBlock {
    objc_setAssociatedObject(self, &cq_viewTappedBlockKey, cq_viewTappedBlock, OBJC_ASSOCIATION_COPY);
}

/**
 与单击手势绑定的block
 
 @param tappedBlock 单击手势事件回调的block
 */
- (void)cq_whenTapped:(void(^)(void))tappedBlock {
    self.cq_viewTappedBlock = tappedBlock;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    [self addGestureRecognizer:tapGesture];
}

// 单击view
- (void)viewTapped {
    !self.cq_viewTappedBlock ?: self.cq_viewTappedBlock();
}

@end
