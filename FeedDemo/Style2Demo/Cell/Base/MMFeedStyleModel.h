//
//  MMFeedStyleModel.h
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import "MMFeedComponentModel.h"

typedef NS_ENUM(NSInteger, MMFeedStyle) {
    MMFeedStyleNone,
    MMFeedStyle1,
    MMFeedStyle2,
    MMFeedStyle3
};

@interface MMFeedStyleModel : MMFeedComponentModel

- (MMFeedStyle)feedStyle;

@end
