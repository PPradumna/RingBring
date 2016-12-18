//
//  CustomView.h
//  ringbring
//
//  Created by APPLE on 10/20/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CustomView : UIView

@property (nonatomic) IBInspectable UIColor *startColor;
@property (nonatomic) IBInspectable UIColor *midColor;
@property (nonatomic) IBInspectable UIColor *endColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat cornerRadious;
@property (nonatomic) IBInspectable BOOL isHorizontal;

@end
