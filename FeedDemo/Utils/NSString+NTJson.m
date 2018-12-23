//
//  NSString+NTJson.m
//  NeiTui
//
//  Created by bitpanda on 14/11/26.
//  Copyright (c) 2014年 taou. All rights reserved.
//

#import "NSString+NTJson.h"

@implementation NSString (NTJson)

- (id)objectFromJsonSerialization
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    //NSJSONReadingMutableContainers 返回的将是可变容器
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
}

@end
