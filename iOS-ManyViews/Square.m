//
//  Square.m
//  iOS-ManyViews
//
//  Created by Abhijit Joshi on 5/7/14.
//  Copyright (c) 2014 Misha software solutions. All rights reserved.
//

#import "Square.h"

@implementation Square

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
 // get the current context
 CGContextRef context = UIGraphicsGetCurrentContext();
 
 // context size in pixels
 size_t WIDTH = CGBitmapContextGetWidth(context);
 size_t HEIGHT = CGBitmapContextGetHeight(context);
 
 // for retina display, 1 point = 2 pixels
 // context size in screen points
 float width = WIDTH/2.0;
 float height = HEIGHT/2.0;
 
 // draw a triangle
 CGContextBeginPath(context);
 CGContextMoveToPoint(context, 0.25*width, 0.25*height);
 CGContextAddLineToPoint(context, 0.25*width, 0.75*height);
 CGContextAddLineToPoint(context, 0.75*width, 0.75*height);
 CGContextAddLineToPoint(context, 0.75*width, 0.25*height);
 CGContextClosePath(context);
 [[UIColor blackColor] setFill];
 [[UIColor yellowColor] setStroke];
 CGContextDrawPath(context, kCGPathFillStroke);

}


@end
