//
//  NSDictionary+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/10.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (NXAdd)

/**
 *  移除NSDictionary里所有的Null值
 *
 *  @return 返回移除后的结果
 */
- (NSDictionary *)removeNullValue;

/**
 *  判断字典对于给定Key是否有内容
 *
 *  @param key 给定的Key
 *
 *  @return YES 存在 NO 不存在
 */
- (BOOL)hasKey:(NSString *)key;

/**
 *  与另一个字典合并
 *
 *  @param dict 将要合并过来的字典
 *
 *  @return 合并后的字典
 */
- (NSDictionary *)dictionaryByMergingWith:(NSDictionary *)dict;

/**
 *  合并两个字典
 *
 *  @param dict1 第一个字典
 *  @param dict2 第二个字典
 *
 *  @return 合并之后得到的字典
 */
+ (NSDictionary *)dictionaryByMerging:(NSDictionary *)dict1 with:(NSDictionary *)dict2;



@end
