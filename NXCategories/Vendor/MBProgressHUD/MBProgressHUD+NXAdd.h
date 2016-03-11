//
//  MBProgressHUD+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (NXAdd)

+ (MB_INSTANCETYPE)showMessageHUDAddedTo:(UIView *)view
                              withDetail:(NSString *)detail
                          hideAfterDelay:(NSTimeInterval)delay
                                animated:(BOOL)animated;

@end
