//
//  MMFeedCell.h
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMCachedHeightTableCell.h"
#import "MMFeedComponentView.h"
#import "MMFeedItem.h"

@interface MMFeedCell : MMCachedHeightTableCell
@property (nonatomic, strong, readonly) MMFeedComponentView *styleView;
@property (nonatomic, strong) MMFeedItem *feedItem;

+ (Class)styleViewClass;
@end
