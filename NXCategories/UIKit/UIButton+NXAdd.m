//
//  UIButton+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/7/5.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "UIButton+NXAdd.h"
#import "UIImage+NXAdd.h"

@implementation UIButton (NXAdd)

- (void)startCountDownTime:(NSInteger)timeout
                     title:(NSString *)tittle
                waitTittle:(NSString *)waitTittle{
    __block NSInteger timeOut=timeout; //倒计时时间
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        if(timeOut<=0){ //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                [self setTitle:tittle forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
            });
        }else{
            int seconds = timeOut % 60;
            NSString *strTime = [NSString stringWithFormat:@"%.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"____%@",strTime);
                [self setTitle:[NSString stringWithFormat:@"%@%@",strTime,waitTittle] forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;
                
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
                  forState:(UIControlState)state{
    [self setBackgroundImage:[UIImage imageWithColor:backgroundColor] forState:state];
}

@end
