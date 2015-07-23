//
//  UCInfomationView.m
//  ICAlertViewAndActionSheet
//
//  Created by 朱封毅 on 23/07/15.
//  Copyright (c) 2015年 card. All rights reserved.
//

#import "ICInfomationView.h"
#import <UIKit/UIKit.h>
/*
  全局静态变量，让类方法中的对象持有
*/
static ClickAtIndexBlock _ClickAtIndexBlock;

@interface  ICInfomationView()<UIActionSheetDelegate,UIAlertViewDelegate>

@end
@implementation ICInfomationView

+(UIAlertView *)initWithTitle:(NSString*)title message:(NSString *)messge cancleButtonTitle:(NSString *)cancleButtonTitle OtherButtonsArray:(NSArray*)otherButtons clickAtIndex:(ClickAtIndexBlock) clickAtIndex;

{
    _ClickAtIndexBlock = [clickAtIndex copy];
    UIAlertView  *Al = [[UIAlertView alloc] initWithTitle:title message:messge delegate:self cancelButtonTitle:cancleButtonTitle otherButtonTitles: nil];
    for (NSString *otherTitle in otherButtons) {
        [Al addButtonWithTitle:otherTitle];
    }
    [Al show];
    return Al;
}
#pragma mark   UIAlertViewDelegate
+(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    _ClickAtIndexBlock(buttonIndex);
}
+(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    _ClickAtIndexBlock = nil;
}
@end
