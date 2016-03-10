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

@end
