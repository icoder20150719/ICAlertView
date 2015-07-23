//
//  UCInfomationView.h
//  ICAlertViewAndActionSheet
//
//  Created by 朱封毅 on 23/07/15.
//  Copyright (c) 2015年 card. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^ClickAtIndexBlock)(NSInteger buttonIndex);
@interface ICInfomationView : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>

+(UIAlertView *)initWithTitle:(NSString*)title message:(NSString *)messge cancleButtonTitle:(NSString *)cancleButtonTitle OtherButtonsArray:(NSArray*)otherButtons clickAtIndex:(ClickAtIndexBlock) clickAtIndex;

@end
