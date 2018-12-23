//
//  MMFeedGuideCardItem.h
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMFeedComponentItem.h"

@interface MMFeedGuideCardItem : MMFeedComponentItem

@property (nonatomic, readonly) NSString *icon;
@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) NSString *desc;
@property (nonatomic, readonly) NSString *button_text;

- (void)clickCard;
- (void)clickButton;

@end
