//
//  UIColor+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (NXAdd)

NS_ASSUME_NONNULL_BEGIN

/**
 Creates and returns a color object using the hex RGB color values.
 
 @param rgbValue  The rgb value such as 0x66ccff.
 
 @return          The color object. The color information represented by this
 object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue;

/**
 Creates and returns a color object using the hex RGBA color values.
 
 @param rgbaValue  The rgb value such as 0x66ccffff.
 
 @return           The color object. The color information represented by this
 object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithRGBA:(uint32_t)rgbaValue;

/**
 Creates and returns a color object using the specified opacity and RGB hex value.
 
 @param rgbValue  The rgb value such as 0x66CCFF.
 
 @param alpha     The opacity value of the color object,
 specified as a value from 0.0 to 1.0.
 
 @return          The color object. The color information represented by this
 object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha;

/**
 Creates and returns a color object from hex string.
 
 @discussion:
 Valid format: #RGB #RGBA #RRGGBB #RRGGBBAA 0xRGB ...
 The `#` or "0x" sign is not required.
 The alpha will be set to 1.0 if there is no alpha component.
 It will return nil when an error occurs in parsing.
 
 Example: @"0xF0F", @"66ccff", @"#66CCFF88"
 
 @param hexStr  The hex string value for the new color.
 
 @return        An UIColor object from string, or nil if an error occurs.
 */
+ (nullable UIColor *)colorWithHexString:(NSString *)hexStr;

#pragma mark - Light Shades

/**
 *  Returns a flat color object whose HSB values are 0.0, 0.0, 0.17 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatBlackColor;

/**
 *  Returns a flat color object whose HSB values are 0.62, 0.50, 0.63 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatBlueColor;

/**
 *  Returns a flat color object whose HSB values are 0.07, 0.45, 0.37 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatBrownColor;

/**
 *  Returns a flat color object whose HSB values are 0.07, 0.31, 0.64 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatCoffeeColor;

/**
 *  Returns a flat color object whose HSB values are 0.38, 0.45, 0.37 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatForestGreenColor;

/**
 *  Returns a flat color object whose HSB values are 0.51, 0.10, 0.65 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatGrayColor;

/**
 *  Returns a flat color object whose HSB values are 0.40, 0.77, 0.80 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatGreenColor;

/**
 *  Returns a flat color object whose HSB values are 0.21, 0.70, 0.78 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatLimeColor;

/**
 *  Returns a flat color object whose HSB values are 0.79, 0.51, 0.71 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatMagentaColor;

/**
 *  Returns a flat color object whose HSB values are 0.01, 0.65, 0.47 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatMaroonColor;

/**
 *  Returns a flat color object whose HSB values are 0.47, 0.86, 0.74 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatMintColor;

/**
 *  Returns a flat color object whose HSB values are 0.58, 0.45, 0.37 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatNavyBlueColor;

/**
 *  Returns a flat color object whose HSB values are 0.08, 0.85, 0.90 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatOrangeColor;

/**
 *  Returns a flat color object whose HSB values are 0.90, 0.49, 0.96 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPinkColor;

/**
 *  Returns a flat color object whose HSB values are 0.83, 0.45, 0.37 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPlumColor;

/**
 *  Returns a flat color object whose HSB values are 0.62, 0.24, 0.95 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPowderBlueColor;

/**
 *  Returns a flat color object whose HSB values are 0.70, 0.52, 0.77 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPurpleColor;

/**
 *  Returns a flat color object whose HSB values are 0.02, 0.74, 0.91 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatRedColor;

/**
 *  Returns a flat color object whose HSB values are 0.12, 0.25, 0.94 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatSandColor;

/**
 *  Returns a flat color object whose HSB values are 0.57, 0.76, 0.86 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatSkyBlueColor;

/**
 *  Returns a flat color object whose HSB values are 0.54, 0.55, 0.51 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatTealColor;

/**
 *  Returns a flat color object whose HSB values are 0.99, 0.53, 0.94 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatWatermelonColor;

/**
 *  Returns a flat color object whose HSB values are 0.53, 0.02, 0.95 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatWhiteColor;

/**
 *  Returns a flat color object whose HSB values are 0.13, 0.99, 1.00 and whose alpha value is 1.0.
 *
 *  @return A flat UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatYellowColor;

#pragma mark - Dark Shades

/**
 *  Returns a flat color object whose HSB values are 0.00, 0.00, 0.15 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatBlackColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.62, 0.56, 0.51 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatBlueColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.07, 0.45, 0.31 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatBrownColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.07, 0.34, 0.56 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatCoffeeColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.38, 0.44, 0.31 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatForestGreenColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.51, 0.10, 0.55 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatGrayColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.40, 0.78, 0.68 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatGreenColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.21, 0.81, 0.69 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatLimeColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.78, 0.61, 0.68 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatMagentaColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.01, 0.68, 0.40 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatMaroonColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.47, 0.86, 0.63 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatMintColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.58, 0.45, 0.31 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatNavyBlueColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.07, 1.00, 0.83 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatOrangeColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.91, 0.57, 0.83 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPinkColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.83, 0.46, 0.31 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPlumColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.62, 0.28, 0.84 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPowderBlueColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.70, 0.56, 0.64 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatPurpleColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.02, 0.78, 0.75 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatRedColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.12, 0.30, 0.84 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatSandColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.57, 0.78, 0.73 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatSkyBlueColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.54, 0.54, 0.45 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatTealColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.99, 0.61, 0.85 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatWatermelonColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.57, 0.05, 0.78 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatWhiteColorDark;

/**
 *  Returns a flat color object whose HSB values are 0.11, 1.00, 1.00 and whose alpha value is 1.0.
 *
 *  @return A flat @c UIColor object in the HSB colorspace.
 */
+ (UIColor *)flatYellowColorDark;


@end
NS_ASSUME_NONNULL_END