//
// Created by Kerberos Zhang on 14-9-4.
// Copyright (c) 2014 taou. All rights reserved.
//

#import "RETableViewItem.h"

@interface MMCachedHeightTableItem : RETableViewItem
@property (nonatomic, assign) CGFloat cachedHeight;
@property (nonatomic, assign) BOOL needCalculateHeight;
- (void) setNeedCalculateHeight;
@end
