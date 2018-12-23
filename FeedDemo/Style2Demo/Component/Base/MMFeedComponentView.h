//
//  MMFeedComponentView.h
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMFeedComponentItem.h"

@interface MMFeedComponentView : UIView

@property (nonatomic, strong) MMFeedComponentItem *item;

- (void)prepareForReuse;

+ (CGFloat)viewHeight:(MMFeedComponentItem *)item maxWidth:(CGFloat)maxWidth;

@end
