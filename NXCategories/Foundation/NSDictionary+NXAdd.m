//
//  NSDictionary+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/10.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "NSDictionary+NXAdd.h"
#import "NSArray+NXAdd.h"

@implementation NSDictionary (NXAdd)

- (NSDictionary *)removeNullValue{
    NSMutableDictionary *mdic = [[NSMutableDictionary alloc] init];
    for (NSString *strKey in self.allKeys) {
        NSValue *value = self[strKey];
        // 删除NSDictionary中的NSNull，再保存进字典
        if ([value isKindOfClass:NSDictionary.class]) {
            mdic[strKey] = [(NSDictionary *)value removeNullValue];
        }
        // 删除NSArray中的NSNull，再保存进字典
        else if ([value isKindOfClass:NSArray.class]) {
            mdic[strKey] = [(NSArray *)value removeNullValue];
        }
        // 剩余的非NSNull类型的数据保存进字典
        else if (![value isKindOfClass:NSNull.class]) {
            mdic[strKey] = self[strKey];
        }
    }
    return [[NSDictionary alloc] initWithDictionary:mdic];
}

@end
