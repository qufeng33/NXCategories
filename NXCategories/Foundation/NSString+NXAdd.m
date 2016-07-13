//
//  NSString+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "NSString+NXAdd.h"

@implementation NSString (NXAdd)

+ (NSString *)convertMoneyNumberToString:(NSNumber *)number
                    withLocaleIdentifier:(NSString *)identifier{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [formatter setPositiveFormat:@"###,##0.00;"];
    formatter.locale = [NSLocale localeWithLocaleIdentifier:identifier];
    return [formatter stringFromNumber:number?number:@0];
}

+ (BOOL)isHaveString:(NSString *)string1 InString:(NSString *)string2{
    NSRange _range = [string2 rangeOfString:string1];
    if (_range.location != NSNotFound) {
        return YES;
    }else {
        return NO;
    }
}

- (NSString *)stringByTrim{
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (BOOL)isCarNumber{
    NSString *carRegex = @"^[A-Za-z_0-9]{5}$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    return [carTest evaluateWithObject:self];
}

- (BOOL)isURL{
    NSURL *url = [NSURL URLWithString:self];
    return (url && url.host)?YES:NO;
}

- (BOOL)isEmailAddress{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

@end
