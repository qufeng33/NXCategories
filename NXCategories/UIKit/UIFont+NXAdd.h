//
//  UIFont+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/6/16.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (NXAdd)

/**
 *  标题字号
 *
 */
+ (UIFont *)fontWithHeadlineStyle;

/**
 *  正文字体
 *
 */
+ (UIFont *)fontWithBodyStyle;

/**
 *  子标题字体
 *
 */
+ (UIFont *)fontWithSubheadlineStyle;

/**
 *  脚注字体
 *
 */
+ (UIFont *)fontWithFootnoteStyle;

/**
 *  字幕标题字体
 *
 */
+ (UIFont *)fontWithCaption1Style;

/**
 *  字幕副标题字体
 *
 */
+ (UIFont *)fontWithCaption2Style;

@end
