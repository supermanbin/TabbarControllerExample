//
//  PresentViewController.h
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/14.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PresentViewControllerDismissDelegate <NSObject>

@required
- (void)dismissPresentViewController;

@end

@interface PresentViewController : UIViewController

@property(assign,nonatomic) id <PresentViewControllerDismissDelegate> delegate;
@end
