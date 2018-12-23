//
//  MMFeedComponentItem.h
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMFeedComponentModel.h"

@interface MMFeedComponentItem : NSObject

@property (nonatomic, strong, readonly) MMFeedComponentModel *model;

- (instancetype)initWithModel:(MMFeedComponentModel *)model;

@end
