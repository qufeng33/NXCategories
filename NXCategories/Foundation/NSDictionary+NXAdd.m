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

- (BOOL)hasKey:(NSString *)key {
    return [self objectForKey:key] != nil;
}

- (NSDictionary *)dictionaryByMergingWith:(NSDictionary *)dict {
    return [[self class] dictionaryByMerging:self with: dict];
}

+ (NSDictionary *)dictionaryByMerging:(NSDictionary *)dict1 with:(NSDictionary *)dict2 {
    NSMutableDictionary * result = [NSMutableDictionary dictionaryWithDictionary:dict1];
    [dict2 enumerateKeysAndObjectsUsingBlock: ^(id key, id obj, BOOL *stop) {
        if (![dict1 objectForKey:key]) {
            if ([obj isKindOfClass:[NSDictionary class]]) {
                NSDictionary * newVal = [[dict1 objectForKey: key] dictionaryByMergingWith: (NSDictionary *) obj];
                [result setObject: newVal forKey: key];
            } else {
                [result setObject: obj forKey: key];
            }
        }
    }];
    return (NSDictionary *) [result mutableCopy];
}

@end
