//
//  CustomLeftMenu.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/17.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "CustomLeftMenu.h"

@interface CustomLeftMenu ()
@property (nonatomic, weak) UIImageView *contentView;
@end

@implementation CustomLeftMenu

- (UIImageView *)contentView
{
    if (_contentView == nil) {
        UIImageView *imageView = [[UIImageView alloc] init];
        _contentView = imageView;
        _contentView.width = 170;
        _contentView.image = [UIImage imageNamed:@"popover_background_left"];
        _contentView.userInteractionEnabled = YES;
        [self addSubview:_contentView];
    }
    return _contentView;
}

- (void)setContent:(UIView *)content {
    _content = content;
    content.x = 10;
    content.y = 15;
    content.width = self.contentView.width - 20;
    self.contentView.height = CGRectGetMaxY(content.frame) + 10;
    [self.contentView addSubview:content];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

+ (instancetype)leftMenu
{
    return [[self alloc] init];
}

- (void)showLeftMenu:(UIView *)fromView
{
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    
    self.frame = window.bounds;
    
    [window addSubview:self];
    
    CGRect newFrame = [fromView convertRect:fromView.bounds toView:window];
    self.contentView.x = CGRectGetMinX(newFrame)-10;
    self.contentView.y = CGRectGetMaxY(newFrame);
    
}

- (void)dismiss
{
    [self removeFromSuperview];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismiss];
}

@end
