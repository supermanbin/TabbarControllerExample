//
//  CustomMenu.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/16.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "CustomMenu.h"

@interface CustomMenu()
@property (nonatomic, weak) UIImageView *contentView;
@end

@implementation CustomMenu

- (UIImageView *)contentView {
    if (!_contentView) {
        UIImageView *contentView = [[UIImageView alloc] init];
        contentView.width = 217;
        contentView.image = [UIImage imageNamed:@"popover_background"];
        [self addSubview:contentView];
        contentView.userInteractionEnabled = YES;
        _contentView = contentView;
    }
    return _contentView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.3];
        
    }
    return self;
}

+(instancetype)menu {
    return [[self alloc] init];
}

- (void)setContent:(UIView *)content {
    _content = content;
    content.x = 10;
    content.y = 15;
    content.width = self.contentView.width - 20;
    self.contentView.height = CGRectGetMaxY(content.frame) + 10;
    [self.contentView addSubview:content];
}

- (void)setContentViewController:(UIViewController *)contentViewController {
    _contentViewController = contentViewController;
    
    //让内容控制器的view设置为内容
    self.content = contentViewController.view;
}

- (void)show:(UIView *)fromView {
    // 1、获取最上层window
    /* 这样获取的窗口不一定是最上层的窗口（如果弹出键盘窗口就会遮住此window）
    ** UIWindow *window = [UIApplication sharedApplication].keyWindow;
    ** 这样获取到的window，是当前最上层的window
    */
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    
    // 2、将自己添加到窗口
    [window addSubview:self];
    
    // 3、设置尺寸
    self.frame = window.bounds;
    
    // 设置灰色图片的位置
    // 默认情况，frame是以父控件的左上角为坐标原点
    // 默认情况下，bounds是以自己的左上角为坐标原点
    CGRect newFrame = [fromView convertRect:fromView.bounds toView:window];
    //self.contentView.x = (self.width - self.contentView.width)/2;
    self.contentView.centerX = CGRectGetMidX(newFrame);
    self.contentView.y = CGRectGetMaxY(newFrame);
    
}

- (void)dismiss {
    [self removeFromSuperview];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismiss];
}

@end
