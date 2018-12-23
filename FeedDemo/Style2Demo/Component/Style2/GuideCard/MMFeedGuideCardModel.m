//
//  MMFeedGuideCardModel.m
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedGuideCardModel.h"

@implementation MMFeedGuideCardModel

- (void)innerInitwithDic:(NSDictionary *)dic {
    [super innerInitwithDic:dic];
    self.icon = mm_stringFromDictionary(NULL, dic, @"icon");
    self.title = mm_stringFromDictionary(NULL, dic, @"title");
    self.desc = mm_stringFromDictionary(NULL, dic, @"desc");
    self.target = mm_stringFromDictionary(NULL, dic, @"target");
    self.click_ping = mm_stringFromDictionary(NULL, dic, @"click_ping");
    self.button = [MMFeedGuideButtonModel modelFromDic:dic[@"button"]];
}

@end

@implementation MMFeedGuideButtonModel

- (void)innerInitwithDic:(NSDictionary *)dic {
    [super innerInitwithDic:dic];
    self.text = mm_stringFromDictionary(NULL, dic, @"text");
    self.target = mm_stringFromDictionary(NULL, dic, @"target");
    self.click_ping = mm_stringFromDictionary(NULL, dic, @"click_ping");
}

@end
