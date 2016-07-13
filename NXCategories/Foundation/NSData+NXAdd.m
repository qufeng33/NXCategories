//
//  NSData+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/6/30.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "NSData+NXAdd.h"

@implementation NSData (NXAdd)

- (NSString *)hexadecimalString{
    /* Returns hexadecimal string of NSData. Empty string if data is empty.   */
    const unsigned char *dataBuffer = (const unsigned char *)[self bytes];
    if (!dataBuffer)
        return [NSString string];
    
    NSUInteger          dataLength  = [self length];
    NSMutableString     *hexString  = [NSMutableString stringWithCapacity:(dataLength * 2)];
    
    for (int i = 0; i < dataLength; ++i)
        [hexString appendString:[NSString stringWithFormat:@"%02lx", (unsigned long)dataBuffer[i]]];
    
    return [NSString stringWithString:hexString];
}

@end
