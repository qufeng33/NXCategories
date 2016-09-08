//
//  UIViewController+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/8/11.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "UIViewController+NXAdd.h"

@implementation UIViewController (NXAdd)

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message confirmButtonTitle:(NSString *)confirmButtonTitle popAfterDissmiss:(BOOL)pop{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    __weak typeof(self)weakSelf=self;
    UIAlertAction *cancelAcation = [UIAlertAction actionWithTitle:confirmButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        __strong typeof(weakSelf) strongSelf=weakSelf;
        if (pop && self.navigationController) {
            [strongSelf.navigationController popViewControllerAnimated:YES];
        }
    }];
    [controller addAction:cancelAcation];
    [self presentViewController:controller animated:YES completion:nil];
}

@end
