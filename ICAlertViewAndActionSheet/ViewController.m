//
//  ViewController.m
//  ICAlertViewAndActionSheet
//
//  Created by 朱封毅 on 23/07/15.
//  Copyright (c) 2015年 card. All rights reserved.
//

#import "ViewController.h"
#import "ICInfomationView.h"
#import "ICInfomationView_Runtime.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton  *alertbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    alertbtn.frame = CGRectMake(100,200, 100, 40);
    [alertbtn setTitle:@"alert" forState:UIControlStateNormal];
    [alertbtn setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:alertbtn];
    [alertbtn addTarget:self action:@selector(clickAlert) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)clickAlert
{
    
    
    //没有用runtime
//    [ICInfomationView initWithTitle:@"哈哈,我没有使用代理，我是blocks" message:@"呵呵" cancleButtonTitle:@"好吧" OtherButtonsArray:@[@"嗯呢"] clickAtIndex:^(NSInteger buttonAtIndex) {
//        NSLog(@"click index ====%ld",(long)buttonAtIndex);
//    }];
    
    //用了runtime
    [ICInfomationView_Runtime initWithTitle:@"哈哈,我没有使用代理，我是runtime blocks" message:@"呵呵" cancleButtonTitle:@"好吧" OtherButtonsArray:@[@"嗯呢"] clickAtIndex:^(NSInteger buttonAtIndex) {
        NSLog(@"click index ====%ld",(long)buttonAtIndex);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
