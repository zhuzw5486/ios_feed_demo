//
//  MMFeedListItem.h
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMFeedItem.h"

@interface MMFeedListItem : NSObject
@property (nonatomic, assign) enumMMFeedScene scene; //使用场景

//Item与Cell的映射关系
- (NSDictionary *)registerCells;
- (MMFeedItem *)feedItemWithModel:(MMFeedModel *)model;

- (void)handleWillDisplayItem:(MMFeedItem *)item atIndex:(NSInteger)index;
- (void)handleDidEndDisplayItem:(MMFeedItem *)item atIndex:(NSInteger)index;
- (void)handleDidSelectItem:(MMFeedItem *)item atIndex:(NSInteger)index;

@end
