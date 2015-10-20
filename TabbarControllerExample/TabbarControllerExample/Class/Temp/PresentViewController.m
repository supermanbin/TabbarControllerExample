//
//  PresentViewController.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/14.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "PresentViewController.h"
#import "UIView+Property.h"
#import "DismissViewController.h"

@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    // Do any additional setup after loading the view.
    UIButton *dismissBtn = [[UIButton alloc] init];
    dismissBtn.x = 10;
    dismissBtn.y = 88;
    dismissBtn.width = self.view.bounds.size.width-20;
    dismissBtn.height = 44;
    [dismissBtn setTitle:@"dismiss" forState:UIControlStateNormal];
    [dismissBtn addTarget:self action:@selector(dismissAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissBtn];
    
    //[_delegate dismissPresentViewController];
    
}

- (void)dismissAction {
    NSLog(@"present");
    DismissViewController *dismissVC = [[DismissViewController alloc] init];
    dismissVC.view.backgroundColor = [UIColor redColor];
    [self presentViewController:dismissVC animated:YES completion:nil];
    //[self dismissViewControllerAnimated:YES completion:nil];
    [_delegate dismissPresentViewController];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
