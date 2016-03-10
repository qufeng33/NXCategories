//
//  NSArray+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/10.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "NSArray+NXAdd.h"
#import "NSDictionary+NXAdd.h"

@implementation NSArray (NXAdd)

- (NSArray *)removeNullValue{
    NSMutableArray *marr = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.count; i++) {
        NSValue *value = self[i];
        // 删除NSDictionary中的NSNull，再添加进数组
        if ([value isKindOfClass:NSDictionary.class]) {
            [marr addObject:[(NSDictionary *)value removeNullValue]];
        }
        // 删除NSArray中的NSNull，再添加进数组
        else if ([value isKindOfClass:NSArray.class]) {
            [marr addObject:[(NSArray *)value removeNullValue]];
        }
        // 剩余的非NSNull类型的数据添加进数组
        else if (![value isKindOfClass:NSNull.class]) {
            [marr addObject:value];
        }
    }
    return [[NSArray alloc] initWithArray:marr];
}

@end
