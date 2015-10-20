//
//  DismissViewController.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/15.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "DismissViewController.h"
#import "UIView+Property.h"
#import "PresentViewController.h"

@interface DismissViewController ()<PresentViewControllerDismissDelegate>
@property (nonatomic, strong) PresentViewController *pVC;
@end

@implementation DismissViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *dismissBtn = [[UIButton alloc] init];
    dismissBtn.x = 10;
    dismissBtn.y = 88;
    dismissBtn.width = self.view.bounds.size.width-20;
    dismissBtn.height = 44;
    [dismissBtn setTitle:@"dismiss" forState:UIControlStateNormal];
    [dismissBtn addTarget:self action:@selector(dismissAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissBtn];
    
    PresentViewController *vc = [[PresentViewController alloc] init];
    vc.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissAction {
    NSLog(@"dismiss");
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)dismissPresentViewController {
    NSLog(@"dismiss all");
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
