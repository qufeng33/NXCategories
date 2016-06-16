//
//  UIFont+NXAdd.m
//  NXCategoriesDemo
//
//  Created by 蒋瞿风 on 16/6/16.
//  Copyright © 2016年 nightx. All rights reserved.
//

#import "UIFont+NXAdd.h"

@implementation UIFont (NXAdd)

+ (UIFont *)fontWithHeadlineStyle{
    return [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
}

+ (UIFont *)fontWithBodyStyle{
    return [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
}

+ (UIFont *)fontWithSubheadlineStyle{
    return [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
}

+ (UIFont *)fontWithFootnoteStyle{
    return [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
}

+ (UIFont *)fontWithCaption1Style{
    return [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
}

+ (UIFont *)fontWithCaption2Style{
    return [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
}

@end
