//
//  MMFeedItem.h
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMCachedHeightTableItem.h"
#import "MMFeedModel.h"
#import "MMFeedComponentItem.h"

typedef NS_ENUM(NSInteger, enumMMFeedScene)
{
    eMMFeedSceneDefault, //其他列表
    eMMFeedSceneTimeline, //好友
    eMMFeedSceneField, //发现
    eMMFeedSceneDetail, //详情页
};

@class MMFeedCmtActionHandler;
//处理单个卡片的通用行为
@interface MMFeedItem : MMCachedHeightTableItem
@property (nonatomic, assign) enumMMFeedScene scene; //使用场景
@property (nonatomic, strong) MMFeedModel* model;
@property (nonatomic, weak) MMFeedCmtActionHandler *cmtHandler; //评论逻辑处理
@property (nonatomic, strong) MMFeedComponentItem *styleItem;

- (instancetype)initWithModel:(MMFeedModel *)model;
- (Class)styleItemClass;

- (void)handleDeleteFeed;
- (void)handleLikeFeed;
- (void)handleShareFeed;
- (void)handleCommentFeed;

@end
