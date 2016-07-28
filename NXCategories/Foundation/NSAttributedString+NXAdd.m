//
//  NSAttributedString+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/7/28.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "NSAttributedString+NXAdd.h"

@implementation NSAttributedString (NXAdd)

+ (NSAttributedString *)lineHeadIndent:(CGFloat)indent string:(NSString *)string{
    NSMutableAttributedString *attString    = [[ NSMutableAttributedString alloc] initWithString:string];
    NSMutableParagraphStyle *paragraphStyle = [[ NSMutableParagraphStyle alloc] init ];
    paragraphStyle.lineBreakMode            = NSLineBreakByTruncatingTail;
    paragraphStyle.firstLineHeadIndent      = indent;
    [attString addAttribute : NSParagraphStyleAttributeName value :paragraphStyle range : NSMakeRange ( 0 ,attString.length)];
    return attString;
}

@end
