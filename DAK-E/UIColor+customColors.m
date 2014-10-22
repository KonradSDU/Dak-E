//
//  UIColor+customColors.m
//  Bash
//
//  Created by Konrad Gnoinski on 30.07.2013.
//  Copyright (c) 2013 Konrad Gnoinski. All rights reserved.
//

#import "UIColor+customColors.h"

@implementation UIColor (customColors)
+ (UIColor*)ZUTZielony
{
    return [UIColor colorWithRed:0.0/255.0 green:100.0/255.0 blue:55.0/255.0 alpha:1.0];
}

+ (UIColor*)ZUTNiebieski
{
    return [UIColor colorWithRed:0/255.0 green:59.0/255.0 blue:150.0/255.0 alpha:1.0];
}

+ (UIColor*)ApplicationBackgroundLighterColor
{
    return [UIColor colorWithRed:180.0/255.0 green:180.0/255.0 blue:180.0/255.0 alpha:1.0];
}

+ (UIColor*)ApplicationBackgroundDarkerColor
{
        return [UIColor colorWithRed:120.0/255.0 green:120.0/255.0 blue:120.0/255.0 alpha:1.0];
}

+ (UIColor*)KolorZLogaWI{
    return [UIColor colorWithRed:85.0/255.0 green:130.0/255.0 blue:185.0/255.0 alpha:1.0];
}

+ (UIColor*)CzerwonyDoOdpowiedzi{
    return [UIColor colorWithRed:193.0/255.0 green:72.0/255.0 blue:79.0/255.0 alpha:1.0];
}

@end
