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
    [self shareMedia:mediaItem andSender:nil];
}

- (void)shareMedia:(Media *)mediaItem andSender:(id)sender {
    NSMutableArray *itemsToShare = [NSMutableArray array];
    
    if (mediaItem.caption.length > 0) {
        [itemsToShare addObject:mediaItem.caption];
    }
    
    if (mediaItem.image) {
        [itemsToShare addObject:mediaItem.image];
    }
    
    if(itemsToShare.count > 0) {
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
        
        if (sender == nil) {
            [self presentViewController:activityVC animated:YES completion:nil];
        } else {
            UIPopoverController *popoverVC = [[UIPopoverController alloc] initWithContentViewController:activityVC];
            popoverVC.popoverContentSize = CGSizeMake(320, 568);
            UIView *senderView = sender;
            [popoverVC presentPopoverFromRect:CGRectMake(0, 0, senderView.frame.size.width, senderView.frame.size.height) inView:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        }
        
    }
}

@end
