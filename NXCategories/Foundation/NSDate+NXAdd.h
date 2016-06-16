//
//  NSDate+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/6/16.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NXAdd)

/**
 *  根据要求将NSDate转换成NSString
 *
 *  @param date          时间
 *  @param dateFormatter 转换的格式
 *
 *  @return 转换后的字符串
 */
+ (NSString *)stringFromDate:(NSDate *)date dateFormatter:(NSString *)dateFormatter;

@end
