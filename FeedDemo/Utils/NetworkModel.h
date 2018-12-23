//
//  NetworkModel.h
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+Uitilities.h"

@interface NetworkModel : NSObject

+ (instancetype)modelFromDic:(NSDictionary *)dic;
+ (NSArray *)modelsArrayFromDicArray:(NSArray *)dicArray;
- (void)innerInitwithDic:(NSDictionary *)dic;

@end
