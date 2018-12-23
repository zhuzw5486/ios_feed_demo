//
//  MMFeedStyle2Model.m
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedStyle2Model.h"

@implementation MMFeedStyle2Model

- (void)innerInitwithDic:(NSDictionary *)dic {
    [super innerInitwithDic:dic];
    self.note = mm_stringFromDictionary(NULL, dic, @"note");
    self.guide_card = [MMFeedGuideCardModel modelFromDic:dic[@"guide_card"]];
}

- (MMFeedStyle)feedStyle {
    return MMFeedStyle2;
}

@end
