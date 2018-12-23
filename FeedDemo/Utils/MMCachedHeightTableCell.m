//
// Created by Kerberos Zhang on 14-9-4.
// Copyright (c) 2014 taou. All rights reserved.
//

#import "MMCachedHeightTableItem.h"
#import "MMCachedHeightTableCell.h"

@interface MMCachedHeightTableCell ()
@end


@implementation MMCachedHeightTableCell
+ (CGFloat) heightWithItem: (RETableViewItem*)item tableViewManager: (RETableViewManager*)tableViewManager
{
    CGFloat height = 0;
    if ([item isKindOfClass:MMCachedHeightTableItem.class]) {
        MMCachedHeightTableItem* cachedItem = (MMCachedHeightTableItem *)item;
        if (cachedItem.needCalculateHeight) {
            height = [self calculateHeightWithItem: cachedItem
                                  tableViewManager: tableViewManager];
            cachedItem.cachedHeight = height;
            cachedItem.needCalculateHeight = NO;
        } else {
            height = cachedItem.cachedHeight;
        }
    } else {
        height = 0;

        @throw [NSException exceptionWithName: @"invalid arguments" reason: @"MMCachedHeightTableCell only for MMCachedHeightTableItem"
                                     userInfo: nil];    }
    return height;
}

+(CGFloat) calculateHeightWithItem: (MMCachedHeightTableItem*)aItem tableViewManager: (RETableViewManager*)aTableViewManager
{
    @throw [NSException exceptionWithName: @"invalid arguments" reason: @"MMCachedHeightTableCell only for MMCachedHeightTableItem"
                                 userInfo: nil];
    return 0;
}
@end
