//
//  UIColor+Extras.h
//  DMAComponents
//
//  Created by David Marioni on 08.01.12.
//  Copyright (c) 2012 David Marioni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Extras)
+ (UIColor *)colorWithRGBA:(NSUInteger) rgba;
+ (UIColor *)colorWithRGB:(NSUInteger) rgb;
+ (UIColor*)colorWithString:(NSString *)colorString;

@end
