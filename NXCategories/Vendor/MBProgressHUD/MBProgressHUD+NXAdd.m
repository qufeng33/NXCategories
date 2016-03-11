//
//  MBProgressHUD+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/3/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "MBProgressHUD+NXAdd.h"

@implementation MBProgressHUD (NXAdd)

+ (instancetype)showMessageHUDAddedTo:(UIView *)view
                           withDetail:(NSString *)detail
                       hideAfterDelay:(NSTimeInterval)delay
                             animated:(BOOL)animated{
    [MBProgressHUD hideAllHUDsForView:view animated:NO];
    MBProgressHUD *hud = [[self alloc] initWithView:view];
    hud.mode             = MBProgressHUDModeText;
    hud.detailsLabelText = detail;
    hud.removeFromSuperViewOnHide = YES;
    [view addSubview:hud];
    [hud show:animated];
    [hud hide:animated afterDelay:delay];
    return hud;
}

@end
