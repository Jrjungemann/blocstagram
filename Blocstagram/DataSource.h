//
//  DataSource.h
//  Blocstagram
//
//  Created by Jonathan Jungemann on 10/7/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

+ (instancetype) sharedInstance;
@property (nonatomic, strong, readonly) NSMutableArray *mediaItems;

@end
