//
//  NSString+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NXAdd)

/**
 *  把数字化成货币格式
 *
 *  @param number     数字
 *  @param identifier 地区
 *
 *  @return 返回货币格式,类似 ¥400，000.00
 */
+ (NSString *)convertMoneyNumberToString:(NSNumber *)number
                    withLocaleIdentifier:(NSString *)identifier;

/**
 *  判断字符串中是否含有某个字符串
 *
 *  @param string1 想要检测的字符串
 *  @param string2 用于监测的字符串
 *
 *  @return 是否包含该字符串
 */
+ (BOOL)isHaveString:(NSString *)string1 InString:(NSString *)string2;

/**
 *  去掉两端的空格
 *
 *  @return 返回处理后的结果
 */
- (NSString *)stringByTrim;

/**
 *  验证是否为Email地址
 *
 *  @return 验证是否为Email地址
 */
- (BOOL)isEmailAddress;


/**
 *  验证是否为车牌号码
 *
 *  @return 验证是否为车牌号码
 */
- (BOOL)isCarNumber;

/**
 *  验证是否为网址
 *
 *  @return 验证是否为网址
 */
- (BOOL)isURL;

/**
 *  验证是否为身份证
 *
 *  @return 验证是否为身份证
 */
- (BOOL)isIdentityCard;


@end
