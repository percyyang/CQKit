//
//  SecondViewController.m
//  CQKit
//
//  Created by 蔡强 on 2017/10/18.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import "SecondViewController.h"
#import "UIButton+CQBlock.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:button];
    button.frame = CGRectMake(90, 200, 200, 40);
    [button setTitle:@"点击返回上一页" forState:UIControlStateNormal];
    [button cq_addEventHandler:^{
        [self.navigationController popViewControllerAnimated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
}



@end
