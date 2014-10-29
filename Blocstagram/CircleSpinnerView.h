//
//  CircleSpinnerView.h
//  Blocstagram
//
//  Created by Jonathan Jungemann on 10/25/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleSpinnerView : UIView

@property (nonatomic, assign) CGFloat strokeThickness;
@property (nonatomic, assign) CGFloat radius;
@property (nonatomic, strong) UIColor *strokeColor;

@end