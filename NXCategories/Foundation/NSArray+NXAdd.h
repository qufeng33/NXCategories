//
//  NSArray+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/10.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (NXAdd)

/**
 *  移除NSArray里所有的Null值
 *
 *  @return 返回移除后的结果
 */
- (NSArray *)removeNullValue;


@end
