//
//  MMFeedStyle2Item.h
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMFeedGuideCardItem.h"
#import "MMFeedComponentItem.h"

@interface MMFeedStyle2Item : MMFeedComponentItem

@property (nonatomic, readonly) NSString *note;
@property (nonatomic, readonly) MMFeedGuideCardItem *guideCardItem;

@end
