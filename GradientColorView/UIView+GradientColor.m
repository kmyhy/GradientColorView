//
//  UIView+GradientColor.m
//  GradientColorView
//
//  Created by qq on 2018/1/8.
//  Copyright © 2018年 yhy. All rights reserved.
//

#import "UIView+GradientColor.h"

@implementation UIView (GradientColor)

/// 将渐变图层作为背景图层
-(void)setBackgroundColors:(NSArray*)colors begin:(CGPoint)begin end:(CGPoint)end{
    [self insertColors:colors begin:begin end:end toLayerIndex:0];
//    self.backgroundColor = [UIColor clearColor];
}

/// 在指定图层插入渐变图层
-(void)insertColors:(NSArray*)colors begin:(CGPoint)begin end:(CGPoint)end toLayerIndex:(int)index {
    CAGradientLayer* layer = [self gradientLayerWithColors:colors begin:begin end:end frame:self.bounds];
    
    
    [self.layer insertSublayer:layer atIndex:index];
    
}

/// 创建一个渐变图层
-(CAGradientLayer*)gradientLayerWithColors:(NSArray*)colors begin:(CGPoint)begin end:(CGPoint)end frame:(CGRect)frame{
    CAGradientLayer* gradient = [CAGradientLayer new];
    gradient.frame = frame;
    
    gradient.startPoint = begin;
    gradient.endPoint = end;
    gradient.colors = colors;// 注意，这里的 colors 只能用 CGColor 而不能用 UIColor
    
    return gradient;
}
@end
