//
//  AppDelegate.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/11.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 1、设置窗口
    self.window = [[UIWindow alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.frame = [UIScreen mainScreen].bounds;
    
    // 2、设置根控制器 test
    RootTabBarViewController *rootTabBarVC = [[RootTabBarViewController alloc] init];
    self.window.rootViewController = rootTabBarVC;
    
    // 3、显示根视图
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//- (void)setTabBarTextColor:(UIViewController *)viewController {
//    NSMutableDictionary *selectedText = [NSMutableDictionary dictionary];
//    selectedText[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.15 green:0.19 blue:0.23 alpha:1];
//    [viewController.tabBarItem setTitleTextAttributes:selectedText forState:UIControlStateSelected];
//}



@end
