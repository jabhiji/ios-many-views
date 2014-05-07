//
//  ViewController.m
//  iOS-ManyViews
//
//  Created by Abhijit Joshi on 5/7/14.
//  Copyright (c) 2014 Misha software solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize view1, view2, view3;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [view1 setNeedsDisplay];
    [view2 setNeedsDisplay];
    [view3 setNeedsDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
