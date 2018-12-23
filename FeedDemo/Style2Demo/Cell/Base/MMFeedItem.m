//
//  MMFeedItem.m
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedItem.h"

@implementation MMFeedItem

- (instancetype)initWithModel:(MMFeedModel *)model {
    self = [super init];
    if (self) {
        _model = model;
        _styleItem = [[[self styleItemClass] alloc] initWithModel:model.style];
        [self setNeedCalculateHeight];
    }
    return self;
}

- (Class)styleItemClass {
    assert(false);
    return nil;
}

- (void)handleDeleteFeed {
    
}

- (void)handleLikeFeed {
    
}

- (void)handleShareFeed {
    
}

- (void)handleCommentFeed {
    
}

@end
