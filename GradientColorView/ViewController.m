//
//  ViewController.m
//  GradientColorView
//
//  Created by qq on 2018/1/8.
//  Copyright © 2018年 yhy. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Hex.h"
#import "UIView+GradientColor.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UIButton *colorButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 注意，这里的 colors 只能用 CGColor 而不能用 UIColor
    NSArray * colors = [NSArray arrayWithObjects:(id)[UIColor colorWithHex:0xFA4C48].CGColor, (id)[UIColor colorWithHex:0xFD8B5C].CGColor, nil];
    // 注意这里的 CGPoint 中的 x,y 是相对值，x = 1 表示整个长度，y = 1 表示整个宽度
    CGPoint begin = CGPointMake(0,0.5);
    CGPoint end= CGPointMake(1,0.5);
    
    [_colorView setBackgroundColors:colors begin:begin end:end];
    
    [_colorButton setBackgroundColors:colors begin:begin end:end];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
