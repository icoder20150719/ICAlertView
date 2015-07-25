//
//  ICInfomationView_Runtime.h
//  ICAlertViewAndActionSheet
//
//  Created by andy  on 15/7/25.
//  Copyright (c) 2015年 card. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ICInfomationView_Runtime : NSObject

typedef void (^ClickAtIndexBlock)(NSInteger buttonIndex);

+(UIAlertView *)initWithTitle:(NSString*)title message:(NSString *)messge cancleButtonTitle:(NSString *)cancleButtonTitle OtherButtonsArray:(NSArray*)otherButtons clickAtIndex:(ClickAtIndexBlock) clickAtIndex;
@end
