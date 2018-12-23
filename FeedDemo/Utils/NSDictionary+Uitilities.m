//
//  NSDictionary+Uitilities.m
//  NeiTui
//
//  Created by bitpanda on 15/1/18.
//  Copyright (c) 2015年 taou. All rights reserved.
//

#import "NSDictionary+Uitilities.h"
#import "NSString+NTJson.h"

#if DEBUG
#define isForceCheckClass    YES
#else
#define isForceCheckClass    NO
#endif

@implementation NSDictionary (Uitilities)

NSInteger mm_integerFromDictionary(NSInteger *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0;
    }
    NSObject *object = [dict objectForKey:key];
    NSInteger result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).integerValue;
            }
            result = ((NSNumber *)object).integerValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

NSUInteger mm_uintegerFromDictionary(NSUInteger *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0;
    }
    NSObject *object = [dict objectForKey:key];
    NSInteger result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).unsignedIntegerValue;
            }
            result = ((NSNumber *)object).unsignedIntegerValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

long mm_longFromDictionary(long *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0;
    }
    NSObject *object = [dict objectForKey:key];
    long result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).longValue;
            }
            result = ((NSNumber *)object).longValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

unsigned long mm_unsignedLongFromDictionary(unsigned long *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0;
    }
    NSObject *object = [dict objectForKey:key];
    unsigned long result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).unsignedLongValue;
            }
            result = ((NSNumber *)object).unsignedLongValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

long long mm_longlongFromDictionary(long long *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0;
    }
    NSObject *object = [dict objectForKey:key];
    long long result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).longLongValue;
            }
            result = ((NSNumber *)object).longLongValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

unsigned long long mm_unsignedLonglongFromDictionary(unsigned long long *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0;
    }
    NSObject *object = [dict objectForKey:key];
    unsigned long long result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).unsignedLongLongValue;
            }
            result = ((NSNumber *)object).unsignedLongLongValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

int mm_intFromDictionary(int *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0;
    }
    NSObject *object = [dict objectForKey:key];
    int result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).intValue;
            }
            result = ((NSNumber *)object).intValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

double mm_doubleFromDictionary(double *value, NSDictionary *dict, id key) {
    if (![dict isKindOfClass:NSDictionary.class]) {
        return 0.0f;
    }
    NSObject *object = [dict objectForKey:key];
    double result = 0;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).doubleValue;
            }
            result = ((NSNumber *)object).doubleValue;
        }
        else if ([object isKindOfClass:NSString.class]){
            if (value) {
                *value = ((NSString *)object).doubleValue;
            }
            result = ((NSString *)object).doubleValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }

    return result;
}

BOOL mm_boolFromDictionary(BOOL *value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return NO;
    }
    NSObject *object = [dict objectForKey:key];
    BOOL result = NO;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSNumber.class]) {
            if (value) {
                *value = ((NSNumber *)object).boolValue;
            }
            result = ((NSNumber *)object).boolValue;
        }
        else if ([object isKindOfClass:NSString.class]){
            if (value) {
                *value = ((NSString *)object).boolValue;
            }
            result = ((NSString *)object).boolValue;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

NSString *mm_stringFromDictionary(NSString *__strong*value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return nil;
    }
    NSObject *object = [dict objectForKey:key];
    NSString *result = nil;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSString.class]) {
            if (value) {
                *value = (NSString *)object;
            }
            result = (NSString *)object;
        } else if ([object isKindOfClass:NSNumber.class]) {
            result = [(NSNumber *)object stringValue];
            if (value) {
                *value = result;
            }
        }
        else if(isForceCheckClass) {
//            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

NSDictionary *mm_dictionaryFromDictionary(NSDictionary *__strong*value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return nil;
    }
    NSObject *object = [dict objectForKey:key];
    NSDictionary *result = nil;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSDictionary.class]) {
            if (value) {
                *value = (NSDictionary *)object;
            }
            result = (NSDictionary *)object;
        } else if([object isKindOfClass:NSString.class]) {
            id decode = [(NSString *)object objectFromJsonSerialization];
            if ([decode isKindOfClass:NSDictionary.class]) {
                if (value) {
                    *value = (NSDictionary *)decode;
                }
                result = (NSDictionary *)decode;
            }
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a NSDictionary" userInfo:nil];
        }
    }
    
    return result;
}

NSArray *mm_arrayFromDictionary(NSArray *__strong*value, NSDictionary *dict, id key)
{
    if (![dict isKindOfClass:NSDictionary.class]) {
        return nil;
    }
    NSObject *object = [dict objectForKey:key];
    NSArray *result = nil;
    if (object != nil && object != [NSNull null]) {
        if ([object isKindOfClass:NSArray.class]) {
            if (value) {
                *value = (NSArray *)object;
            }
            result = (NSArray *)object;
        }
        else if(isForceCheckClass) {
            @throw [NSException exceptionWithName:@"NSDictionary_get_string" reason:@"value not a string" userInfo:nil];
        }
    }
    
    return result;
}

@end
