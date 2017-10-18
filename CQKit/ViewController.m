//
//  ViewController.m
//  CQKit
//
//  Created by 蔡强 on 2017/10/18.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+CQBlock.h"
#import "SecondViewController.h"
#import "UIView+CQBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //------- 使用UIView的扩展方法 -------//
    [self.view cq_whenTapped:^{
        NSLog(@"单击了view");
    }];
    
    //------- 使用UIButton的扩展方法 -------//
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:button];
    button.frame = CGRectMake(90, 200, 200, 40);
    [button setTitle:@"点击去下一页" forState:UIControlStateNormal];
    [button cq_addEventHandler:^{
        SecondViewController *secondVC = [[SecondViewController alloc] init];
        [self.navigationController pushViewController:secondVC animated:YES];
    } forControlEvents:UIControlEventTouchUpInside];
}

@end
