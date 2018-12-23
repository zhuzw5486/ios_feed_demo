//
//  MMFeedStyle2Item.m
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedStyle2Item.h"
#import "MMFeedStyle2Model.h"

@interface MMFeedStyle2Item()
@property (nonatomic, strong) MMFeedStyle2Model *styleModel;
@end

@implementation MMFeedStyle2Item
@synthesize guideCardItem = _guideCardItem;

- (MMFeedStyle2Model *)styleModel {
    if ([self.model isKindOfClass:[MMFeedStyle2Model class]]) {
        return (MMFeedStyle2Model *)self.model;
    }
    
    return nil;
}

- (NSString *)note {
    return self.styleModel.note;
}

- (MMFeedGuideCardItem *)guideCardItem {
    if (_guideCardItem == nil) {
        if (self.styleModel.guide_card) {
            _guideCardItem = [[MMFeedGuideCardItem alloc] initWithModel:self.styleModel.guide_card];
        }
    }
    return _guideCardItem;
}

@end
