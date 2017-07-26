//
//  ICInfomationView_Runtime.m
//  ICAlertViewAndActionSheet
//
//  Created by andy  on 15/7/25.
//  Copyright (c) 2015年 card. All rights reserved.
//

#import "ICInfomationView_Runtime.h"
#import <objc/runtime.h>

const char *IC_alertView_Block = "IC_alertView_Block";
@interface UIAlertView(ICInfomationView_Runtime)
-(void)setClickBlock:(ClickAtIndexBlock)block;
-(ClickAtIndexBlock)clickBlock;
@end

@implementation UIAlertView(ICInfomationView_Runtime)
-(void)setClickBlock:(ClickAtIndexBlock)block{
    objc_setAssociatedObject(self, IC_alertView_Block, block, OBJC_ASSOCIATION_COPY);
}
-(ClickAtIndexBlock)clickBlock{
    return objc_getAssociatedObject(self, IC_alertView_Block);
}
@end

@interface ICInfomationView_Runtime ()<UIAlertViewDelegate>

@end

@implementation ICInfomationView_Runtime

+(UIAlertView *)initWithTitle:(NSString*)title message:(NSString *)messge cancleButtonTitle:(NSString *)cancleButtonTitle OtherButtonsArray:(NSArray*)otherButtons clickAtIndex:(ClickAtIndexBlock) clickAtIndex;

{
    UIAlertView  *al = [[UIAlertView alloc] initWithTitle:title message:messge delegate:self cancelButtonTitle:cancleButtonTitle otherButtonTitles: nil];
    al.clickBlock = clickAtIndex;
    for (NSString *otherTitle in otherButtons) {
        [al addButtonWithTitle:otherTitle];
    }
    [al show];
    return al;
}

#pragma mark   UIAlertViewDelegate

+(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView.clickBlock) {
        
        alertView.clickBlock(buttonIndex);
    }
}

@end
