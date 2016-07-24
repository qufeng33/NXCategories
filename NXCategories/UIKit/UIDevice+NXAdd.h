//
//  UIDevice+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/7/5.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (NXAdd)

/**
 *  获取iOS系统的版本号
 *
 *  @return iOS系统的版本号
 */
+ (NSString *)systemVersion;


/**
 *  判断当前系统是否有摄像头
 *
 *  @return 当前系统是否有摄像头
 */
+ (BOOL)hasCamera;

/**
 *  判断当前系统是否为iPad
 *
 *  @return 当前系统是否为iPad
 */
+ (BOOL)isiPad;


/**
 *  获取用户当前的IP地址
 *
 *  @return 用户网络的IP地址
 */
+ (NSString *)getIPAddress;


/**
 *   获取用户的MAC地址
 *
 *  @return 用户的MAC地址
 */
+ (NSString *)getMacAddress;

@end
