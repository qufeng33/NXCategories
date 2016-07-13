//
//  UIScreen+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/7/5.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "UIScreen+NXAdd.h"

@implementation UIScreen (NXAdd)

+ (CGSize)size{
    return [UIScreen mainScreen].bounds.size;
}

+ (CGFloat)width{
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)height{
    return [UIScreen mainScreen].bounds.size.height;
}

@end
