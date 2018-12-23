//
//  MMFeedComponentItem.m
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import "MMFeedComponentItem.h"

@implementation MMFeedComponentItem

- (instancetype)initWithModel:(MMFeedComponentModel *)model {
    self = [super init];
    if (self) {
        _model = model;
    }
    return self;
}

@end
