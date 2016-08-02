//
//  NSDate+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/6/16.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "NSDate+NXAdd.h"

@implementation NSDate (NXAdd)

+ (NSString *)stringFromDate:(NSDate *)date dateFormatter:(NSString *)dateFormatter{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = dateFormatter;
    return [formatter stringFromDate:date];
}

+ (NSDate *)dateFromDateString:(NSString *)dateString dateFormatter:(NSString *)dateFormatter{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = dateFormatter;
    return [formatter dateFromString:dateString];
}

@end
