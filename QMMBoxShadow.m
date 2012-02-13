//
//  QMMBoxShadow.m
//  DMAComponents
//
//  Created by David Marioni on 02.12.11.
//  Copyright (c) 2011 David Marioni. All rights reserved.
//

#import "QMMBoxShadow.h"

@implementation QMMBoxShadow

+ (CGPathRef)renderRect:(UIView*)imgView{
	UIBezierPath *path = [UIBezierPath bezierPathWithRect:imgView.bounds];
	return path.CGPath;
	}

+ (CGPathRef)renderTrapezoid:(UIView*)imgView{
	CGSize size = imgView.bounds.size;
	
	UIBezierPath *path = [UIBezierPath bezierPath];
	[path moveToPoint:CGPointMake(size.width * 0.33f, size.height * 0.66f)];
	[path addLineToPoint:CGPointMake(size.width * 0.66f, size.height * 0.66f)];
	[path addLineToPoint:CGPointMake(size.width * 1.15f, size.height * 1.15f)];
	[path addLineToPoint:CGPointMake(size.width * -0.15f, size.height * 1.15f)];
	
	return path.CGPath;
}

+ (CGPathRef)renderEllipse:(UIView*)imgView{
	CGSize size = imgView.bounds.size;
	
	CGRect ovalRect = CGRectMake(0.0f, size.height + 5, size.width - 10, 15);
	UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
	
	return path.CGPath;
}

+ (CGPathRef)renderPaperCurl:(UIView*)imgView curlFactor:(CGFloat)factor{
	CGSize size = imgView.bounds.size;
	
	CGFloat curlFactor = factor;//default 15.0f;
	CGFloat shadowDepth = 5.0f;
	
	UIBezierPath *path = [UIBezierPath bezierPath];
	[path moveToPoint:CGPointMake(0.0f, 0.0f)];
	[path addLineToPoint:CGPointMake(size.width, 0.0f)];
	[path addLineToPoint:CGPointMake(size.width, size.height + shadowDepth)];
	[path addCurveToPoint:CGPointMake(0.0f, size.height + shadowDepth)
			controlPoint1:CGPointMake(size.width - curlFactor, size.height + shadowDepth - curlFactor)
			controlPoint2:CGPointMake(curlFactor, size.height + shadowDepth - curlFactor)];
	
	return path.CGPath;
}


@end


/*
 USAGE:
 
 // Add background tile
 UIImage *bgImage = [UIImage imageNamed:@"embedded_bg.png"];
 self.view.backgroundColor = [UIColor colorWithPatternImage:bgImage];
 
 // Add the reference view
 UIImage *image = [UIImage imageNamed:@"dccp.jpeg"];
 UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
 [self.view addSubview:imgView];
 imgView.center = self.view.center;
 
 imgView.layer.shadowColor = [UIColor blackColor].CGColor;
 imgView.layer.shadowOpacity = 0.7f;
 imgView.layer.shadowOffset = CGSizeMake(0.0f, 5.0f);
 imgView.layer.shadowRadius = 2.0f;
 imgView.layer.masksToBounds = NO;
 
 // Select shadow shape
 //imgView.layer.shadowPath = [QMMBoxShadow renderRect:imgView];
 //imgView.layer.shadowPath = [QMMBoxShadow renderTrapezoid:imgView];
 //imgView.layer.shadowPath = [QMMBoxShadow renderEllipse:imgView];
 //imgView.layer.shadowPath = [QMMBoxShadow renderPaperCurl:imgView];
 
 [imgView release];
 
 
 */