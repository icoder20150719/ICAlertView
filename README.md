# ICAlertView
详细的说明我已经在github上写了啊，大家可以自己去定义自己想要的控件比如UIActionSheet,UIImagePickerController
//实现代码我房子在这里了简书地址[简书说明](http://www.jianshu.com/p/810208698254)
<pre><code>
  [ICInfomationView initWithTitle:@"哈哈,我没有使用代理，我是blocks" message:@"呵呵" cancleButtonTitle:@"好吧" OtherButtonsArray:@[@"嗯呢"] clickAtIndex:^(NSInteger buttonAtIndex) {
        NSLog(@"click index ====%ld",(long)buttonAtIndex);
    }];
</code></pre>
