//
//  MMFeedListItem.m
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import "MMFeedListItem.h"
#import "MMStyle2FeedItem.h"

@implementation MMFeedListItem {
//    MMFeedCmtActionHandler *_cmtHandler;
}

- (instancetype)init {
    self = [super init];
//    _cmtHandler = [[MMFeedCmtActionHandler alloc] init];
    return self;
}

- (NSDictionary *)registerCells {
    NSMutableDictionary *registerCells = [NSMutableDictionary dictionary];
    registerCells[@"MMStyle2FeedItem"] = @"MMStyle2FeedCell";
    return registerCells;
}

- (MMFeedItem *)feedItemWithModel:(MMFeedModel *)model {
    MMFeedItem *item = nil;
    switch (model.style.feedStyle) {
        case MMFeedStyle2:
            item = [[MMStyle2FeedItem alloc] initWithModel:model];
            break;
        default:
            break;
    }
    item.scene = self.scene;
//    item.cmtHandler = _cmtHandler;
    return item;
}

- (void)handleWillDisplayItem:(MMFeedItem *)item atIndex:(NSInteger)index {
    
}
- (void)handleDidEndDisplayItem:(MMFeedItem *)item atIndex:(NSInteger)index {
    
}
- (void)handleDidSelectItem:(MMFeedItem *)item atIndex:(NSInteger)index {
    
}

@end
