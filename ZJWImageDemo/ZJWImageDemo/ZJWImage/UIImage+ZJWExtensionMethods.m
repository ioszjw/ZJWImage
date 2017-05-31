//
//  UIImage+ZJWExtensionMethods.m
//  ZJWImageDemo
//
//  Created by zjw on 2017/5/27.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "UIImage+ZJWExtensionMethods.h"

@implementation UIImage (ZJWExtensionMethods)

/** image = color + size + radius */
+ (instancetype)zjw_imageWithColor:(UIColor *)color size:(CGSize)size radius:(CGFloat)radius {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius];
    CGContextAddPath(context, path.CGPath);
    CGContextFillPath(context);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

/** image = color + size */
+ (instancetype)zjw_imageWithColor:(UIColor *)color size:(CGSize)size {
    return [self zjw_imageWithColor:color size:size radius:0];
}

@end
