//
//  MediaTableViewCell.h
//  Blocstagram
//
//  Created by Jon Jungemann on 10/8/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@interface MediaTableViewCell : UITableViewCell

@property (nonatomic, strong) Media *mediaItem;

 + (CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width;

@end
