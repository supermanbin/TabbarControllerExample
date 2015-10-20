//
//  RootTabBarViewController.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/13.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "CustomNavigationController.h"
#import "HomeTableViewController.h"
#import "MessageCenterTableViewController.h"
#import "DiscoverTableViewController.h"
#import "ProfileTableViewController.h"

@interface RootTabBarViewController ()

@end

@implementation RootTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HomeTableViewController *homeVC = [[HomeTableViewController alloc] init];
    [self addChildVC:homeVC Title:@"首页" image:@"tabbar_home" imageSelect:@"tabbar_home_selected"];
    
    MessageCenterTableViewController *messageCenterVC = [[MessageCenterTableViewController alloc] init];
    [self addChildVC:messageCenterVC Title:@"消息" image:@"tabbar_message_center" imageSelect:@"tabbar_message_center_selected"];
    
//    UIViewController *vc = [[UIViewController alloc] init];
//    [self addChildVC:vc Title:nil image:nil imageSelect:nil];
    
    DiscoverTableViewController *discoverVC = [[DiscoverTableViewController alloc] init];
    [self addChildVC:discoverVC Title:@"发现" image:@"tabbar_discover" imageSelect:@"tabbar_discover_selected"];
    
    ProfileTableViewController *profileVC = [[ProfileTableViewController alloc] init];
    [self addChildVC:profileVC Title:@"我" image:@"tabbar_profile" imageSelect:@"tabbar_profile_selected"];
    
}

/**
 *  添加子控制器
 *
 *  @param viewController 子控制器
 *  @param title          title
 *  @param image          image
 *  @param imageSelect    imageSelect
 */

- (void)addChildVC:(UIViewController *)viewController Title:(NSString *)title image:(NSString *)image imageSelect:(NSString *)imageSelect {
    
    viewController.tabBarItem.title = title;
    viewController.navigationItem.title = title;
    viewController.tabBarItem.image = [UIImage imageNamed:image];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:imageSelect] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置字体颜色
    NSMutableDictionary *selectedText = [NSMutableDictionary dictionary];
    selectedText[NSForegroundColorAttributeName] = [UIColor colorWithRed:1 green:0.51 blue:0 alpha:1];
    [viewController.tabBarItem setTitleTextAttributes:selectedText forState:UIControlStateSelected];
    
    // 设置NavigationController
    CustomNavigationController *nav = [[CustomNavigationController alloc] initWithRootViewController:viewController];
    
    [self addChildViewController:nav];
}

@end
