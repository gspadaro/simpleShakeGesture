//
//  ViewController.m
//  shakeGesture
//
//  Created by Giuseppe Spadaro on 16/05/15.
//  Copyright (c) 2015 Giuseppe Spadaro. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        [self showAlert];
    }
}

- (void)showAlert
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Shake It"
                                                        message:@"Shake Gesture detected!!!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
    [alertView show];
}

@end

