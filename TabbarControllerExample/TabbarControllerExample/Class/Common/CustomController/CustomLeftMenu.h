//
//  CustomLeftMenu.h
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/17.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomLeftMenu : UIView
+ (instancetype)leftMenu;
- (void)showLeftMenu:(UIView *)fromView;
- (void)dismiss;

@property (nonatomic, strong) UIView *content;
@end
