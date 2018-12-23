//
//  MMFeedStyle2Model.h
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import "NetworkModel.h"
#import "MMFeedGuideCardModel.h"
#import "MMFeedStyleModel.h"

@interface MMFeedStyle2Model : MMFeedStyleModel

@property (nonatomic, copy) NSString *note;
@property (nonatomic, strong) MMFeedGuideCardModel *guide_card;

@end
