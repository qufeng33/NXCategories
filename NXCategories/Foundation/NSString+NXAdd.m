//
//  NSString+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "NSString+NXAdd.h"

@implementation NSString (NXAdd)

- (NSString *)stringByTrim{
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

+ (NSString *)convertMoneyNumberToString:(NSNumber *)number
                    withLocaleIdentifier:(NSString *)identifier{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setPositiveFormat:@"###,##0.00;"];
    formatter.locale = [NSLocale localeWithLocaleIdentifier:identifier];
    return [formatter stringFromNumber:number?number:@0];
}

@end
