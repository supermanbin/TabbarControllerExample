//
//  HomeTableViewController.m
//  TabbarControllerExample
//
//  Created by 封斌 on 15/10/14.
//  Copyright © 2015年 supermanUI. All rights reserved.
//

#import "HomeTableViewController.h"
#import "TableViewDetailViewController.h"
#import "UIBarButtonItem+ItemTool.h"
#import "CustomMenu.h"
#import "CustomLeftMenu.h"
#import "MenuTableViewController.h"

@interface HomeTableViewController ()<UITableViewDataSource>

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* 设置左边按钮 */
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(friendAttentionAction:) image:@"navigationbar_friendattention" imageSelected:@"navigationbar_friendattention_highlighted"];
    
    /* 设置右边按钮 */
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(radarBtnAction) image:@"navigationbar_icon_radar" imageSelected:@"navigationbar_icon_radar_highlighted"];
    
    /* 设置中间title */
    UIButton *titleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    titleBtn.width = 100;
    titleBtn.height = 30;
    titleBtn.layer.cornerRadius = 4;
    titleBtn.layer.masksToBounds = YES;
    titleBtn.backgroundColor = [UIColor whiteColor];
    titleBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 25);
    titleBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 75, 0, 0);
    [titleBtn setTitle:@"fengbin" forState:UIControlStateNormal];
    [titleBtn setTitleColor:[UIColor colorWithRed:0.16 green:0.17 blue:0.21 alpha:1] forState:UIControlStateNormal];
    [titleBtn setTitleColor:[UIColor colorWithRed:0.51 green:0.51 blue:0.51 alpha:1] forState:UIControlStateHighlighted];
    [titleBtn setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
//    [titleBtn setImage:[UIImage imageNamed:@"navigationbar_arrow_up"] forState:UIControlStateHighlighted];
    [titleBtn addTarget:self action:@selector(popoverAction:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.titleView = titleBtn;
    
}

- (void)friendAttentionAction:(UIView *)fromView {
    CustomLeftMenu *leftMenu = [CustomLeftMenu leftMenu];
    UIView *wrapView = [[UIView alloc] init];
    wrapView.height = 44;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.x = 0;
    btn.y = 0;
    btn.width = 150;
    btn.height = 44;
    btn.backgroundColor = [UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1];
    btn.layer.cornerRadius = 2;
    btn.layer.masksToBounds = YES;
    [btn setTitle:@"test" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [wrapView addSubview:btn];
    leftMenu.content = wrapView;
    [leftMenu showLeftMenu:fromView];
}

- (void)radarBtnAction {
    NSLog(@"radarBtnAction");
}

- (void)popoverAction:(UIButton *)fromBtn {
    
    // 1、设置menu
    CustomMenu *menu = [CustomMenu menu];
    // 2、设置内容
    MenuTableViewController *vc = [[MenuTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    vc.view.height = 176;
    vc.tableView.delegate = self;
    menu.contentViewController = vc;
    
    // 3、显示menu
    [menu show:fromBtn];
    
}

- (void)removePopoverView {
    NSLog(@"removePopoverView");
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 设置cell分割线
    tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    tableView.showsVerticalScrollIndicator = NO;
    
    static NSString *ID = @"cell";
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    UIImageView *rightArrow = [[UIImageView alloc] init];
    rightArrow.image = [UIImage imageNamed:@"common_icon_arrow"];
    rightArrow.width = rightArrow.image.size.width;
    rightArrow.height = rightArrow.image.size.height;
    cell.accessoryView = rightArrow;
    
    UIImageView *commonCellLine = [[UIImageView alloc] init];
    commonCellLine.image = [UIImage imageNamed:@"common_card_bottom_background"];
    
    cell.backgroundView = commonCellLine;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewDetailViewController *detail = [[TableViewDetailViewController alloc] init];
    detail.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detail animated:YES];
}

@end
