//
//  ViewController.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 21/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "UIColor+customColors.h"

@implementation UIColor (customColors)
+ (UIColor*)lighterGreen
{
    return [UIColor colorWithRed:180.0/255.0 green:208.0/255.0 blue:195.0/255.0 alpha:1.0];
}

+ (UIColor*)darkerGreen
{
    return [UIColor colorWithRed:96.0/255.0 green:132.0/255.0 blue:112.0/255.0 alpha:1.0];
}

+ (UIColor*)gray
{
        return [UIColor colorWithRed:181.0/255.0 green:182.0/255.0 blue:186.0/255.0 alpha:1.0];
}

@end
