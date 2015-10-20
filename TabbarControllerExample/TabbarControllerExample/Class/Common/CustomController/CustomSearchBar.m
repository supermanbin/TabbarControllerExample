//
//  CustomSearchBar.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/15.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "CustomSearchBar.h"

@implementation CustomSearchBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.font = [UIFont systemFontOfSize:14];
        self.textColor = [UIColor colorWithRed:0.33 green:0.33 blue:0.33 alpha:1];
        self.placeholder = @"搜索";
        self.background = [UIImage imageNamed:@"search_navigationbar_textfield_background"];
        // 设置搜索icon
        UIImageView *searchIcon = [[UIImageView alloc] init];
        searchIcon.width = 30;
        searchIcon.height = 30;
        searchIcon.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        // 设置UITextField 左视图 leftView
        self.leftView = searchIcon;
        self.leftView.contentMode = UIViewContentModeCenter;
        // 设置leftView显示模式
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    return self;
}

+ (instancetype)searchBar {
    return [[self alloc] init];
}
@end
