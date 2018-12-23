//
// Created by Kerberos Zhang on 14-9-4.
// Copyright (c) 2014 taou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RETableViewCell.h"

@class MMCachedHeightTableItem;
@interface MMCachedHeightTableCell : RETableViewCell
+ (CGFloat) calculateHeightWithItem: (MMCachedHeightTableItem*) item
                   tableViewManager: (RETableViewManager*) tableViewManager;
@end
