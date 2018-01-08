# UIView 渐变色背景


## 用法

这个 API 以 UIView 分类 UIView+GradientColor 的形式提供。

1. 导入头文件： #import "UIView+GradientColor.h"
2. 在任意 UIView 子类上调用 setBackgroundColors:begin:end 方法：

	```swift
	
	// 注意，这里的 colors 只能用 CGColor 而不能用 UIColor
    NSArray * colors = [NSArray arrayWithObjects:(id)[UIColor colorWithHex:0xFA4C48].CGColor, (id)[UIColor colorWithHex:0xFD8B5C].CGColor, nil];
    // 注意这里的 CGPoint 中的 x,y 是相对值，x = 1 表示整个长度，y = 1 表示整个宽度
    CGPoint begin = CGPointMake(0,0.5);
    CGPoint end= CGPointMake(1,0.5);
    
    [_colorView setBackgroundColors:colors begin:begin end:end];
    
    [_colorButton setBackgroundColors:colors begin:begin end:end];
	
	```

效果如下图：

<img src="1.png" width="240"/>
 
