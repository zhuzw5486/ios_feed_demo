//
//  MMFeedModel.h
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import "NetworkModel.h"
#import "MMFeedStyleModel.h"


@interface MMFeedActionBarModel : NetworkModel

@end

@interface MMFeedUnwillModel : NetworkModel

@end

@interface MMFeedConfigModel : NetworkModel

@end

@interface MMFocusEnvelop : NetworkModel

@end

//单个Feed数据
@interface MMFeedModel : NetworkModel
@property (nonatomic, copy) NSString* fid;
@property (nonatomic, strong) MMFeedActionBarModel* action_bar;
@property (nonatomic, copy) NSArray<MMFeedUnwillModel *> *unwills;
@property (nonatomic, strong) MMFeedConfigModel *config;
@property (nonatomic, strong) MMFeedStyleModel *style;
@end

//Feed列表数据
@interface MMFeedEnvelop : NetworkModel
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, assign) NSInteger total;
@property (nonatomic, assign) NSInteger remain;
@property (nonatomic, assign) NSInteger page;
@property (nonatomic, copy) NSString *pop_text;
@property (nonatomic, copy) NSArray *feeds;
@property (nonatomic, strong) MMFocusEnvelop *focus;
@end
