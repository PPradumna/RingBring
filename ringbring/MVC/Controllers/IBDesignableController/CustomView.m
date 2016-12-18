//
//  CustomView.m
//  ringbring
//
//  Created by APPLE on 10/20/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}


@end
