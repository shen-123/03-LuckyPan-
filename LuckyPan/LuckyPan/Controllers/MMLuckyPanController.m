//
//  MMLuckyPanController.m
//  LuckyPan
//
//  Created by Apple on 16/5/26.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "MMLuckyPanController.h"
#import "MMLuckyRotateWheel.h"

@interface MMLuckyPanController ()

/**
 *  转盘的视图
 */
@property (nonatomic, weak) MMLuckyRotateWheel *rotateWheel;

@end

@implementation MMLuckyPanController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     1.可以添加UIImageView,然后设置图片
     
     2.通过自定义view,重写drawRect方法,将图片画上去
     
     3.如果是一张小图片,以平铺的方式设置图片
     
     4.设置layer的contents属性!
     
     */
    // MARK: - 1.设置背景
    self.view.layer.contents =
    (__bridge id)[UIImage imageNamed:@"LuckyBackground"].CGImage;
    
    // MARK: - 2.加载转盘界面
    /**
     在viewDidLoad中,视图的尺寸系统还没有调整好
     换个方法->
     */
    // 1.创建
    MMLuckyRotateWheel *rotateWheel = [MMLuckyRotateWheel luckyRotateWheel];
    
    // 2.添加
    [self.view addSubview:rotateWheel];
    
    // 3.赋值
    _rotateWheel = rotateWheel;
}

#pragma mark - 设置状态栏效果
- (UIStatusBarStyle)preferredStatusBarStyle {

    return UIStatusBarStyleLightContent;
}

#pragma mark - 这个方法是控制器的视图布局完子控件调用
- (void)viewDidLayoutSubviews {
    // 系统做的事情不要干扰
    [super viewDidLayoutSubviews];
    
    // 实现自己的布局
    self.rotateWheel.center = self.view.center;

}


@end
