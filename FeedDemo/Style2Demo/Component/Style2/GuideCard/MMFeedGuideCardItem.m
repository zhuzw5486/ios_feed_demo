//
//  MMFeedGuideCardItem.m
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedGuideCardItem.h"
#import "MMFeedGuideCardModel.h"

@interface MMFeedGuideCardItem()

@property (nonatomic, readonly) MMFeedGuideCardModel *cardModel;

@end

@implementation MMFeedGuideCardItem

- (MMFeedGuideCardModel *)cardModel {
    if ([self.model isKindOfClass:[MMFeedGuideCardModel class]]) {
        return (MMFeedGuideCardModel *)self.model;
    }
    
    return nil;
}

- (NSString *)icon {
    return self.cardModel.icon;
}

- (NSString *)title {
    return self.cardModel.title;
}

- (NSString *)desc {
    return self.cardModel.desc;
}

- (NSString *)button_text {
    return self.cardModel.button.text;
}

- (void)clickCard {
    
}

- (void)clickButton {
   
}

@end
