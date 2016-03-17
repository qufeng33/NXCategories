//
//  UIColor+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "UIColor+NXAdd.h"
#import "NSString+NXAdd.h"


#define hsb(h,s,b) [UIColor colorWithHue:h/360.0f saturation:s/100.0f brightness:b/100.0f alpha:1.0]

@implementation UIColor (NXAdd)

static inline NSUInteger hexStrToInt(NSString *str) {
    uint32_t result = 0;
    sscanf([str UTF8String], "%X", &result);
    return result;
}

static BOOL hexStrToRGBA(NSString *str,
                         CGFloat *r, CGFloat *g, CGFloat *b, CGFloat *a) {
    str = [[str stringByTrim] uppercaseString];
    if ([str hasPrefix:@"#"]) {
        str = [str substringFromIndex:1];
    } else if ([str hasPrefix:@"0X"]) {
        str = [str substringFromIndex:2];
    }
    
    NSUInteger length = [str length];
    //         RGB            RGBA          RRGGBB        RRGGBBAA
    if (length != 3 && length != 4 && length != 6 && length != 8) {
        return NO;
    }
    
    //RGB,RGBA,RRGGBB,RRGGBBAA
    if (length < 5) {
        *r = hexStrToInt([str substringWithRange:NSMakeRange(0, 1)]) / 255.0f;
        *g = hexStrToInt([str substringWithRange:NSMakeRange(1, 1)]) / 255.0f;
        *b = hexStrToInt([str substringWithRange:NSMakeRange(2, 1)]) / 255.0f;
        if (length == 4)  *a = hexStrToInt([str substringWithRange:NSMakeRange(3, 1)]) / 255.0f;
        else *a = 1;
    } else {
        *r = hexStrToInt([str substringWithRange:NSMakeRange(0, 2)]) / 255.0f;
        *g = hexStrToInt([str substringWithRange:NSMakeRange(2, 2)]) / 255.0f;
        *b = hexStrToInt([str substringWithRange:NSMakeRange(4, 2)]) / 255.0f;
        if (length == 8) *a = hexStrToInt([str substringWithRange:NSMakeRange(6, 2)]) / 255.0f;
        else *a = 1;
    }
    return YES;
}

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:1];
}

+ (UIColor *)colorWithRGBA:(uint32_t)rgbaValue {
    return [UIColor colorWithRed:((rgbaValue & 0xFF000000) >> 24) / 255.0f
                           green:((rgbaValue & 0xFF0000) >> 16) / 255.0f
                            blue:((rgbaValue & 0xFF00) >> 8) / 255.0f
                           alpha:(rgbaValue & 0xFF) / 255.0f];
}

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:alpha];
}

+ (instancetype)colorWithHexString:(NSString *)hexStr {
    CGFloat r, g, b, a;
    if (hexStrToRGBA(hexStr, &r, &g, &b, &a)) {
        return [UIColor colorWithRed:r green:g blue:b alpha:a];
    }
    return nil;
}

#pragma mark - Chameleon - Light Shades

+ (UIColor *)flatBlackColor {
    return hsb(0, 0, 17);
}

+ (UIColor *)flatBlueColor {
    return hsb(224, 50, 63);
}

+ (UIColor *)flatBrownColor {
    return hsb(24, 45, 37);
}

+ (UIColor *)flatCoffeeColor {
    return hsb(25, 31, 64);
}

+ (UIColor *)flatForestGreenColor {
    return hsb(138, 45, 37);
}

+ (UIColor *)flatGrayColor {
    return hsb(184, 10, 65);
}

+ (UIColor *)flatGreenColor {
    return hsb(145, 77, 80);
}

+ (UIColor *)flatLimeColor {
    return hsb(74, 70, 78);
}

+ (UIColor *)flatMagentaColor {
    return hsb(283, 51, 71);
}

+ (UIColor *)flatMaroonColor {
    return hsb(5, 65, 47);
}

+ (UIColor *)flatMintColor {
    return hsb(168, 86, 74);
}

+ (UIColor *)flatNavyBlueColor {
    return hsb(210, 45, 37);
}

+ (UIColor *)flatOrangeColor {
    return hsb(28, 85, 90);
}

+ (UIColor *)flatPinkColor {
    return hsb(324, 49, 96);
}

+ (UIColor *)flatPlumColor {
    return hsb(300, 45, 37);
}

+ (UIColor *)flatPowderBlueColor {
    return hsb(222, 24, 95);
}

+ (UIColor *)flatPurpleColor {
    return hsb(253, 52, 77);
}

+ (UIColor *)flatRedColor {
    return hsb(6, 74, 91);
}

+ (UIColor *)flatSandColor {
    return hsb(42, 25, 94);
}

+ (UIColor *)flatSkyBlueColor {
    return hsb(204, 76, 86);
}

+ (UIColor *)flatTealColor {
    return hsb(195, 55, 51);
}

+ (UIColor *)flatWatermelonColor {
    return hsb(356, 53, 94);
}

+ (UIColor *)flatWhiteColor {
    return hsb(192, 2, 95);
}

+ (UIColor *)flatYellowColor {
    return hsb(48, 99, 100);
}

#pragma mark - Chameleon - Dark Shades

+ (UIColor *)flatBlackColorDark {
    return hsb(0, 0, 15);
}

+ (UIColor *)flatBlueColorDark {
    return hsb(224, 56, 51);
}

+ (UIColor *)flatBrownColorDark {
    return hsb(25, 45, 31);
}

+ (UIColor *)flatCoffeeColorDark {
    return hsb(25, 34, 56);
}

+ (UIColor *)flatForestGreenColorDark {
    return hsb(135, 44, 31);
}

+ (UIColor *)flatGrayColorDark {
    return hsb(184, 10, 55);
}

+ (UIColor *)flatGreenColorDark {
    return hsb(145, 78, 68);
}

+ (UIColor *)flatLimeColorDark {
    return hsb(74, 81, 69);
}

+ (UIColor *)flatMagentaColorDark {
    return hsb(282, 61, 68);
}

+ (UIColor *)flatMaroonColorDark {
    return hsb(4, 68, 40);
}

+ (UIColor *)flatMintColorDark {
    return hsb(168, 86, 63);
}

+ (UIColor *)flatNavyBlueColorDark {
    return hsb(210, 45, 31);
}

+ (UIColor *)flatOrangeColorDark {
    return hsb(24, 100, 83);
}

+ (UIColor *)flatPinkColorDark {
    return hsb(327, 57, 83);
}

+ (UIColor *)flatPlumColorDark {
    return hsb(300, 46, 31);
}

+ (UIColor *)flatPowderBlueColorDark {
    return hsb(222, 28, 84);
}

+ (UIColor *)flatPurpleColorDark {
    return hsb(253, 56, 64);
}

+ (UIColor *)flatRedColorDark {
    return hsb(6, 78, 75);
}

+ (UIColor *)flatSandColorDark {
    return hsb(42, 30, 84);
}

+ (UIColor *)flatSkyBlueColorDark {
    return hsb(204, 78, 73);
}

+ (UIColor *)flatTealColorDark {
    return hsb(196, 54, 45);
}

+ (UIColor *)flatWatermelonColorDark {
    return hsb(358, 61, 85);
}

+ (UIColor *)flatWhiteColorDark {
    return hsb(204, 5, 78);
}

+ (UIColor *)flatYellowColorDark {
    return hsb(40, 100, 100);
}

@end
