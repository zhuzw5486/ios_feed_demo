//
//  NSDictionary+Uitilities.h
//  NeiTui
//
//  Created by bitpanda on 15/1/18.
//  Copyright (c) 2015年 taou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Uitilities)

/***
 *扩展Dictionary取值方法避免由于类型不匹配，导致使用时程序crash
 *  develop版强制判断类型，若不匹配将直接抛出异常，可及时监测类型错误
 *  release版不强制判断类型，若类型不匹配，将赋默认值，降低用户使用时crash触发率
***/

NSInteger mm_integerFromDictionary(NSInteger *value, NSDictionary *dict, id key);
NSUInteger mm_uintegerFromDictionary(NSUInteger *value, NSDictionary *dict, id key);

long mm_longFromDictionary(long *value, NSDictionary *dict, id key);
unsigned long mm_unsignedLongFromDictionary(unsigned long *value, NSDictionary *dict, id key);

long long mm_longlongFromDictionary(long long *value, NSDictionary *dict, id key);
unsigned long long mm_unsignedLonglongFromDictionary(unsigned long long *value, NSDictionary *dict, id key);

int mm_intFromDictionary(int *value, NSDictionary *dict, id key);

double mm_doubleFromDictionary(double *value, NSDictionary *dict, id key);

BOOL mm_boolFromDictionary(BOOL *value, NSDictionary *dict, id key);

NSString *mm_stringFromDictionary(NSString *__strong*value, NSDictionary *dict, id key);

NSDictionary *mm_dictionaryFromDictionary(NSDictionary *__strong*value, NSDictionary *dict, id key);

NSArray *mm_arrayFromDictionary(NSArray *__strong*value, NSDictionary *dict, id key);

@end
