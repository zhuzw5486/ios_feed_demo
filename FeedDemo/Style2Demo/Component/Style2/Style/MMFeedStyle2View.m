//
//  MMFeedStyle2View.m
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedStyle2View.h"
#import "MMFeedStyle2Item.h"
#import "MMFeedGuideCardView.h"

@interface MMFeedStyle2View()
@property (nonatomic, strong) UILabel *noteView;
@property (nonatomic, strong) MMFeedGuideCardView *guideCardView;

@property (nonatomic, readonly) MMFeedStyle2Item *styleItem;
@end

@implementation MMFeedStyle2View

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *noteView = [[UILabel alloc] init];
        noteView.textAlignment = NSTextAlignmentLeft;
        noteView.textColor = [UIColor blackColor];
        noteView.font = [UIFont systemFontOfSize:13];
        [self addSubview:noteView];
        self.noteView = noteView;
        
        MMFeedGuideCardView *guideCardView = [[MMFeedGuideCardView alloc] init];
        [self addSubview:guideCardView];
        self.guideCardView = guideCardView;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.noteView.frame = CGRectMake(20, 10, CGRectGetWidth(self.frame) - 20 * 2, 20);
    self.guideCardView.frame = CGRectMake(20, CGRectGetMaxY(self.noteView.frame), CGRectGetWidth(self.frame) - 20 * 2, CGRectGetHeight(self.frame) - CGRectGetMaxY(self.noteView.frame) - 20);
}

- (void)prepareForReuse {
    
}

- (MMFeedStyle2Item *)styleItem {
    return (MMFeedStyle2Item *)self.item;
}

- (void)setItem:(MMFeedComponentItem *)item {
    if (self.item == item) {
        return;
    }
    
    [super setItem:item];
    self.noteView.text = self.styleItem.note;
    self.guideCardView.item = self.styleItem.guideCardItem;
    [self setNeedsLayout];
}

+ (CGFloat)viewHeight:(MMFeedComponentItem *)item maxWidth:(CGFloat)maxWidth {
    if (![item isKindOfClass:MMFeedStyle2Item.class]) {
        return 0.0f;
    }
    
    MMFeedStyle2Item *styleItem = (MMFeedStyle2Item *)item;
    
    CGFloat noteHeight = 20.0f;
    CGFloat cardHeight = [MMFeedGuideCardView viewHeight:styleItem.guideCardItem maxWidth:maxWidth];
    return 10 * 2 + noteHeight + cardHeight;
}

@end
