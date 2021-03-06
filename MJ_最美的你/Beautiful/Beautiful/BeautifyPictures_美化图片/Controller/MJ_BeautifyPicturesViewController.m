//
//  MJ_BeautifyPicturesViewController.m
//  Beautiful
//
//  Created by 洛洛大人 on 16/10/19.
//  Copyright © 2016年 最美的你. All rights reserved.
//

#import "MJ_BeautifyPicturesViewController.h"
#import "MJ_Button.h"

@interface MJ_BeautifyPicturesViewController ()

@end

@implementation MJ_BeautifyPicturesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatTopView];
    [self creatBottomView];

}
#pragma mark - 顶部View
- (void)creatTopView {
    // View
    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTHVIEW, 80)];
    [self.view addSubview:topView];
    topView.backgroundColor = [UIColor grayColor];
    
    // 返回
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, 20, 80, 40);
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [topView addSubview:button];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    // 撤销
    MJ_Button *buttonOfUndo = [MJ_Button buttonWithType:UIButtonTypeCustom];
    buttonOfUndo.frame = CGRectMake(self.view.frame.size.width / 2 - 50, 20, 40, 40);
    [buttonOfUndo setTitle:@"撤销" forState:UIControlStateNormal];
    [topView addSubview:buttonOfUndo];
    buttonOfUndo.backgroundColor = [UIColor greenColor];
    
    // 前进
    MJ_Button *buttonOfForward = [MJ_Button buttonWithType:UIButtonTypeCustom];
    buttonOfForward.frame = CGRectMake(self.view.frame.size.width / 2 + 10, 20, 40, 40);
    [buttonOfForward setTitle:@"前进" forState:UIControlStateNormal];
    [topView addSubview:buttonOfForward];
    buttonOfForward.backgroundColor = [UIColor greenColor];
    
    // 保存/分享
    MJ_Button *buttonOfPreservationAndSharing = [MJ_Button buttonWithType:UIButtonTypeCustom];
    buttonOfPreservationAndSharing.frame = CGRectMake(self.view.frame.size.width - button.frame.size.width - button.frame.origin.x, button.frame.origin.y, button.frame.size.width, button.frame.size.height);
    [buttonOfPreservationAndSharing setTitle:@"保存/分享" forState:UIControlStateNormal];
    [topView addSubview:buttonOfPreservationAndSharing];
    buttonOfPreservationAndSharing.backgroundColor = [UIColor greenColor];
    
    
}
#pragma mark - 底部View
- (void)creatBottomView {
    
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 120, self.view.frame.size.width, 120)];
    bottomView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:bottomView];
    
    
}
#pragma mark - 返回点击事件
- (void)buttonAction:(UIButton *)button {
    [self.navigationController popViewControllerAnimated:YES];
}









@end
