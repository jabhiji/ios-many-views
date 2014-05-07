//
//  ViewController.h
//  iOS-ManyViews
//
//  Created by Abhijit Joshi on 5/7/14.
//  Copyright (c) 2014 Misha software solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Circle.h"
#import "Triangle.h"
#import "Square.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet Circle *view1;
@property (strong, nonatomic) IBOutlet Triangle *view2;
@property (strong, nonatomic) IBOutlet Square *view3;

@end
