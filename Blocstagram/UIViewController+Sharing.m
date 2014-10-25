//
//  UIViewController+Sharing.m
//  Blocstagram
//
//  Created by Jonathan Jungemann on 10/23/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import "UIViewController+Sharing.h"

@implementation UIViewController (Sharing)

- (void)shareMedia:(Media *)mediaItem {
    NSMutableArray *itemsToShare = [NSMutableArray array];
    
    if (mediaItem.caption.length > 0) {
        [itemsToShare addObject:mediaItem.caption];
    }
    
    if (mediaItem.image) {
        [itemsToShare addObject:mediaItem.image];
    }
    
    if (itemsToShare.count > 0) {
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
        [self presentViewController:activityVC animated:YES completion:nil];
    }
}

@end
