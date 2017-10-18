### 对UIKit的一些扩展

### UIView:

```
[self.view cq_whenTapped:^{
    NSLog(@"单击了view");
}];
```

### UIButton:

```
[button cq_addEventHandler:^{
    NSLog(@"按钮点击了");
} forControlEvents:UIControlEventTouchUpInside];
```

