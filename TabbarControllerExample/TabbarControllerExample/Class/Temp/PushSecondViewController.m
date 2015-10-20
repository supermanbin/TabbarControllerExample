//
//  PushSecondViewController.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/14.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "PushSecondViewController.h"
#import "UIView+Property.h"
#import "PresentViewController.h"
#import "TableViewDetailViewController.h"

@interface PushSecondViewController ()

@end

@implementation PushSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *presentBtn = [[UIButton alloc] init];
    presentBtn.x = 10;
    presentBtn.y = 88;
    presentBtn.width = self.view.bounds.size.width-20;
    presentBtn.height = 44;
    presentBtn.backgroundColor = [UIColor blackColor];
    presentBtn.layer.cornerRadius = 6;
    presentBtn.layer.masksToBounds = YES;
    [presentBtn setTitle:@"present view" forState:UIControlStateNormal];
    [presentBtn addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:presentBtn];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:0 target:self action:@selector(back)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)present {
    PresentViewController *presentVC = [[PresentViewController alloc] init];
    [self presentViewController:presentVC animated:YES completion:nil];
}

- (void)back {
    [self.navigationController popToViewController:self.navigationController.viewControllers[1] animated:YES];
}

@end
