//
//  UIColor+Extras.m
//  DMAComponents
//
//  Created by David Marioni on 08.01.12.
//  Copyright (c) 2012 David Marioni. All rights reserved.
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

+ (UIColor*) colorWithString:(NSString *)colorString
{
	if ([colorString isKindOfClass:[NSString class]])
		{
		long r, g, b, a = 255;
		BOOL isValid = NO;
		NSString *hexColor = [colorString stringByTrimmingCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefABCDEF"] invertedSet]];
		if ([colorString length] >= 6)
			{
			NSString *red   = [hexColor substringWithRange:NSMakeRange(0, 2)];
			NSString *green = [hexColor substringWithRange:NSMakeRange(2, 2)];
			NSString *blue  = [hexColor substringWithRange:NSMakeRange(4, 2)];
			r = strtol([red UTF8String],   NULL, 16);
			g = strtol([green UTF8String], NULL, 16);
			b = strtol([blue UTF8String],  NULL, 16);
			isValid = YES;
			}
		
		if ([colorString length] == 8)
			{
			NSString *alpha = [hexColor substringWithRange:NSMakeRange(6, 2)];
			a = strtol([alpha UTF8String], NULL, 16);
			}
		
		if (isValid)
			return [UIColor colorWithRed:r/255. green:g/255. blue:b/255. alpha:a/255.];
		}
	
	return nil;
}
@end
