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
 *  去掉两端的空格
 *
 *  @return 返回处理后的结果
 */
- (NSString *)stringByTrim;

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

@end
