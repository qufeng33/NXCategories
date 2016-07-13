//
//  UIButton+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/7/5.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (NXAdd)

/**
 *  点击后显示倒计时，计时结束后恢复可点
 *
 *  @param timeout    倒计时时间
 *  @param tittle     倒计时结束后恢复的标题
 *  @param waitTittle 倒计时期间显示在
 */
- (void)startCountDownTime:(NSInteger )timeout
                     title:(NSString *)tittle
                waitTittle:(NSString *)waitTittle;


/**
 *  设置不同状态下的背景颜色
 *
 *  @param backgroundColor 背景颜色
 *  @param state           UIButton的状态
 */
- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;


@end
