//
//  TableViewDetailViewController.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/13.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "TableViewDetailViewController.h"
#import "PushSecondViewController.h"

@interface TableViewDetailViewController ()

@end

@implementation TableViewDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 88, self.view.frame.size.width-20, 44)];
    pushBtn.backgroundColor = [UIColor blackColor];
    pushBtn.layer.cornerRadius = 6;
    pushBtn.layer.masksToBounds = YES;
    [pushBtn setTitle:@"push view" forState:UIControlStateNormal];
    [pushBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [pushBtn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:pushBtn];
    
}

- (void)push {
    PushSecondViewController *pushSecondView = [[PushSecondViewController alloc] init];
    [self.navigationController pushViewController:pushSecondView animated:YES];
}

@end
