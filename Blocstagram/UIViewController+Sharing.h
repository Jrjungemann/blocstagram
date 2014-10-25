//
//  UIViewController+Sharing.h
//  Blocstagram
//
//  Created by Jonathan Jungemann on 10/23/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Media.h"

@interface UIViewController (Sharing)

- (void)shareMedia:(Media *)mediaItem;

@end
