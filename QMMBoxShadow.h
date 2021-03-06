//
//  QMMBoxShadow.h
//  DMAComponents
//
//  Created by David Marioni on 02.12.11.
//  Copyright (c) 2011 David Marioni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface QMMBoxShadow : NSObject


+ (CGPathRef)renderRect:(UIView*)imgView;
+ (CGPathRef)renderTrapezoid:(UIView*)imgView;
+ (CGPathRef)renderEllipse:(UIView*)imgView;
+ (CGPathRef)renderPaperCurl:(UIView*)imgView curlFactor:(CGFloat)factor;

@end


