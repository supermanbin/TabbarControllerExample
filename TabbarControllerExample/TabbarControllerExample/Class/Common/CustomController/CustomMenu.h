//
//  CustomMenu.h
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/16.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomMenu : UIView
+ (instancetype)menu;

/**
 *  show
 */
- (void)show:(UIView *)fromView;

/**
 *  dismiss
 */
- (void)dismiss;

/**
 *  内容
 */
@property (nonatomic, strong) UIView *content;

/**
 *  内容控制器
 */
@property (nonatomic, strong) UIViewController *contentViewController;
@end
