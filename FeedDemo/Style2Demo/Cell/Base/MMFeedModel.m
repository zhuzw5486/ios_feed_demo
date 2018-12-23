//
//  MMFeedModel.m
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedModel.h"

@implementation MMFeedActionBarModel

@end

@implementation MMFeedUnwillModel

@end

@implementation MMFeedConfigModel

@end

@implementation MMFocusEnvelop

@end

#import "MMFeedStyle2Model.h"

@implementation MMFeedModel

- (void)innerInitwithDic:(NSDictionary *)dic {
    [super innerInitwithDic:dic];
    self.fid = mm_stringFromDictionary(NULL, dic, @"id");
    self.style = [MMFeedStyle2Model modelFromDic:dic[@"style2"]];
}
@end


@implementation MMFeedEnvelop

- (void)innerInitwithDic:(NSDictionary *)dic {
    [super innerInitwithDic:dic];
    self.feeds = [MMFeedModel modelsArrayFromDicArray:dic[@"feeds"]];
}

@end
