//
//  Circle.m
//  iOS-ManyViews
//
//  Created by Abhijit Joshi on 5/7/14.
//  Copyright (c) 2014 Misha software solutions. All rights reserved.
//

#import "Circle.h"

@implementation Circle

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
    
    // center coordinates
    float xCen = width/2.0;
    float yCen = height/2.0;
    float maxR = width/2.0;     // WIDTH = HEIGHT in this app
    float R = 0.4*maxR;
    
    // outermost red circle
    CGContextBeginPath(context);
    CGContextAddArc(context, xCen, yCen, R, 0, 2*M_PI, YES);
    [[UIColor redColor] setFill];
    [[UIColor yellowColor] setStroke];
    CGContextDrawPath(context, kCGPathFillStroke);
}

@end
