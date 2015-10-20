//
//  UIBarButtonItem+ItemTool.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/14.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "UIBarButtonItem+ItemTool.h"
#import "UIView+Property.h"

@implementation UIBarButtonItem (ItemTool)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image imageSelected:(NSString *)imageSelected
{
    UIButton *btn = [[UIButton alloc] init];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:imageSelected] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.size = btn.currentBackgroundImage.size;
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
