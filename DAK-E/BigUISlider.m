//
//  BigUISlider.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 22/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "BigUISlider.h"

@implementation BigUISlider

- (CGRect)trackRectForBounds:(CGRect)bounds{
    CGRect customBounds = CGRectMake(0, 0, 550, 40);
    return customBounds;
}

@end
