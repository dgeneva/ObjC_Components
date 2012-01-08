//
//  UIColor+Extras.m
//  ParallaxExplore
//
//  Created by David Marioni on 08.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIColor+Extras.h"

@implementation UIColor(Extras)
+ (UIColor *)colorWithRGBA:(NSUInteger) rgba
{
    return [UIColor colorWithRed:(rgba >> 24) / 255.0f green:(0xff & ( rgba >> 16)) / 255.0f blue:(0xff & ( rgba >> 8)) / 255.0f alpha:(0xff & rgba) / 255.0f];
}

+ (UIColor *)colorWithRGB:(NSUInteger) rgb
{
    return [UIColor colorWithRed:(rgb >> 16) / 255.0f green:(0xff & ( rgb >> 8)) / 255.0f blue:(0xff & rgb) / 255.0f alpha:1.0];
}
@end
