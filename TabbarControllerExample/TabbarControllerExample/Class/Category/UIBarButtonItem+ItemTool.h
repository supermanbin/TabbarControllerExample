//
//  UIBarButtonItem+ItemTool.h
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/14.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ItemTool)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image imageSelected:(NSString *)imageSelected;
@end
