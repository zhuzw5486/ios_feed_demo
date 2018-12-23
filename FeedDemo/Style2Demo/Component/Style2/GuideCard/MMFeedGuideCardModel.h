//
//  MMFeedGuideCardModel.h
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedComponentModel.h"

@class MMFeedGuideButtonModel;
@interface MMFeedGuideCardModel : MMFeedComponentModel

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *target;
@property (nonatomic, copy) NSString *click_ping;
@property (nonatomic, strong) MMFeedGuideButtonModel *button;

@end


@interface MMFeedGuideButtonModel : NetworkModel

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *target;
@property (nonatomic, copy) NSString *click_ping;

@end
