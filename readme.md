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
 
## 特别注意事项

GradientColor 分类严重依赖 UIView 对象的 frame 进行工作。对于 frame 不确定的 UIView（比如这个 view 初始化时没有调用 initWithFrame 方法，或者使用了自动布局，在不指定视图 frame 的情况下调用 setBackgroundColors ），它无法绘制渐变背景图层。

在这种情况下，你可以在需要绘制渐变背景的 View 的 **父 view** 上重写 layoutSubview 方法，然后在这个方法中调用 setBackgroundColors。

```swift
-(void)layoutSubviews{
    [super layoutSubviews];
    [_actionButton setBackgroundColors:@[(id)[UIColor colorWithHex:0xFF6441].CGColor,(id)[UIColor colorWithHex:0xFC324E].CGColor] begin:CGPointMake(0, 0) end:CGPointMake(1, 0)];
}
```
> 你也可以在 view controller 的 viewDidLayoutSubviews 方法中调用 setBackgroundColors，因为 viewDidLayoutSubviews 调用时自动布局已经结束了。


