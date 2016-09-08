//
//  UIViewController+NXAdd.h
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/8/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (NXAdd)

- (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
        confirmButtonTitle:(NSString *)confirmButtonTitle
          popAfterDissmiss:(BOOL)pop;

@end
