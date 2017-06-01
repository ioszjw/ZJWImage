//
//  ViewController.m
//  ZJWImageDemo
//
//  Created by zjw on 2017/5/27.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ZJWExtensionMethods.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 图片 = 颜色:红色 + 尺寸:100×100 + 圆角:12
    CGFloat redImageViewX      = 100.0f;
    CGFloat redImageViewY      = 100.0f;
    CGFloat redImageViewWidth  = 100.0f;
    CGFloat redImageViewHeight = 100.0f;
    UIImageView *redImageView = [[UIImageView alloc] initWithFrame:CGRectMake(redImageViewX, redImageViewY, redImageViewWidth, redImageViewHeight)];
    redImageView.image = [UIImage zjw_imageWithColor:[UIColor redColor] size:CGSizeMake(redImageViewWidth, redImageViewHeight) radius:12];
    [self.view addSubview:redImageView];
    
    // 图片 = 颜色:黄色 + 尺寸:100×100
    CGFloat yellowImageViewX      = 100.0f;
    CGFloat yellowImageViewY      = 300.0f;
    CGFloat yellowImageViewWidth  = 100.0f;
    CGFloat yellowImageViewHeight = 100.0f;
    UIImageView *yellowImageView = [[UIImageView alloc] initWithFrame:CGRectMake(yellowImageViewX, yellowImageViewY, yellowImageViewWidth, yellowImageViewHeight)];
    yellowImageView.image = [UIImage zjw_imageWithColor:[UIColor yellowColor] size:CGSizeMake(yellowImageViewWidth, yellowImageViewHeight)];
    [self.view addSubview:yellowImageView];
    
    // 图片 -> base64 字符串
    NSLog(@"%@", [yellowImageView.image zjw_base64Encoding]);
}

@end
