//
//  CustomNavigationController.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/14.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "CustomNavigationController.h"

@interface CustomNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation CustomNavigationController

+(void)initialize {
    
    // [UIBarButtonItem appearance] 设置整体Navigation的 rightBarButtonItem和leftBarButtonItem样式
    UIBarButtonItem *barItem = [UIBarButtonItem appearance];
    
    // 普通样式
    NSMutableDictionary *barItemTextAttrDict = [NSMutableDictionary dictionary];
    barItemTextAttrDict[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1];
    barItemTextAttrDict[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    
    // 高亮样式
    NSMutableDictionary *barItemTextAttrHighlightDict = [NSMutableDictionary dictionary];
    barItemTextAttrHighlightDict[NSForegroundColorAttributeName] = [UIColor colorWithRed:1 green:0.71 blue:0 alpha:1];
    
    [barItem setTitleTextAttributes:barItemTextAttrDict forState:UIControlStateNormal];
    [barItem setTitleTextAttributes:barItemTextAttrHighlightDict forState:UIControlStateHighlighted];
    
    // [UINavigationBar appearance]设置整体Navigation上的Title样式
    UINavigationBar *navBar = [UINavigationBar appearance];
    NSMutableDictionary *navBarTitleAttrDict = [NSMutableDictionary dictionary];
    navBarTitleAttrDict[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1];
    navBarTitleAttrDict[NSFontAttributeName] = [UIFont systemFontOfSize:18];
    [navBar setTitleTextAttributes:navBarTitleAttrDict];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    [super pushViewController:viewController animated:YES];
    
    if (self.viewControllers.count > 1) {
        
        //        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //
        //        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_withtext"] forState:UIControlStateNormal];
        //        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_withtext_highlighted"] forState:UIControlStateHighlighted];
        //        [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        //        backBtn.size = backBtn.currentBackgroundImage.size;
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"navigationbar_back_withtext" imageSelected:@"navigationbar_back_withtext_highlighted"];
        // 手势往右滑动返回
#warning 自定义navigationController后必须设置<UIGestureRecognizerDelegate>代理
        self.interactivePopGestureRecognizer.delegate = self;
        self.interactivePopGestureRecognizer.enabled = YES;
    }
    
}

- (void)back {
    [self popViewControllerAnimated:YES];
}

@end
