//
//  NSAttributedString+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/7/28.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (NXAdd)

+ (NSAttributedString *)lineHeadIndent:(CGFloat)indent string:(NSString *)string;

@end
