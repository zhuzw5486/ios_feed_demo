//
//  NetworkModel.m
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import "NetworkModel.h"

@interface NetworkModel()
@property (nonatomic, readwrite) NSDictionary *originalJson;
@end

@implementation NetworkModel

- (instancetype)initWithDic:(NSDictionary *)dic {
    if(dic && [dic isKindOfClass:[NSDictionary class]])
    {
        [self innerInitwithDic:dic];
    }
    return self;
}

- (void)innerInitwithDic:(NSDictionary *)dic {
    self.originalJson = dic;
}

+ (instancetype)modelFromDic:(NSDictionary *)dic {
    if (!dic || ![dic isKindOfClass:[NSDictionary class]]) return nil;
    
    return [[self alloc] initWithDic:dic];
}

+ (NSArray *)modelsArrayFromDicArray:(NSArray *)dicArray {
    return [self modelsMutableArrayFromDicArray:dicArray];
}

+ (NSMutableArray *)modelsMutableArrayFromDicArray:(NSArray *)dicArray {
    if (!dicArray || ![dicArray isKindOfClass:[NSArray class]] || dicArray.count == 0) return [[NSMutableArray alloc] initWithCapacity:0];
    
    NSMutableArray * mutableArray = [[NSMutableArray alloc] initWithCapacity:dicArray.count];
    for (NSDictionary * dic in dicArray) {
        NetworkModel *model = [self modelFromDic:dic];
        if(model) {
            [mutableArray addObject:model];
        }
    }
    
    return mutableArray;
}

@end
