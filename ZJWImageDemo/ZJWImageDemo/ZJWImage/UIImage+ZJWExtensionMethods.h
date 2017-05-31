//
//  UIImage+ZJWExtensionMethods.h
//  ZJWImageDemo
//
//  Created by zjw on 2017/5/27.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZJWExtensionMethods)

/** image = color + size + radius */
+ (instancetype)zjw_imageWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius;

/** image = color + size */
+ (instancetype)zjw_imageWithColor:(UIColor *)color size:(CGSize)size;

@end
