//
//  UIView+GradientColor.h
//  GradientColorView
//
//  Created by qq on 2018/1/8.
//  Copyright © 2018年 yhy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GradientColor)
/// 将渐变图层作为背景图层
-(void)setBackgroundColors:(NSArray*)colors begin:(CGPoint)begin end:(CGPoint)end;
/// 在指定图层插入渐变图层
-(void)insertColors:(NSArray*)colors begin:(CGPoint)begin end:(CGPoint)end toLayerIndex:(int)index;
/// 生成一个渐变图层
-(CAGradientLayer*)gradientLayerWithColors:(NSArray*)colors begin:(CGPoint)begin end:(CGPoint)end frame:(CGRect)frame;
@end
