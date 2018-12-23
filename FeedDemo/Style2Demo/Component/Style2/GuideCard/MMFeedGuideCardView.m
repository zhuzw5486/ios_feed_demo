//
//  MMFeedGuideCardView.m
//  Feed
//
//  Created by 朱志文 on 2018/12/21.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedGuideCardView.h"
#import "UIImageView+WebCache.h"
#import "MMFeedGuideCardItem.h"

@interface MMFeedGuideCardView()
@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UIButton *button;

@property (nonatomic, strong) MMFeedGuideCardItem *cardItem;
@end

@implementation MMFeedGuideCardView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *iconImageView = [[UIImageView alloc] init];
        iconImageView.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:iconImageView];
        self.iconImageView = iconImageView;
        
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.textColor = [UIColor blackColor];
        titleLabel.textAlignment = NSTextAlignmentLeft;
        titleLabel.font = [UIFont systemFontOfSize:15];
        [self addSubview:titleLabel];
        self.titleLabel = titleLabel;
        
        UILabel *descLabel = [[UILabel alloc] init];
        descLabel.textColor = [UIColor lightGrayColor];
        descLabel.textAlignment = NSTextAlignmentLeft;
        descLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:descLabel];
        self.descLabel = descLabel;
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor blueColor];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        self.button = button;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.iconImageView.frame = CGRectMake(0, (CGRectGetHeight(self.frame) - 36) / 2, 36, 36);
    self.button.frame = CGRectMake(CGRectGetWidth(self.frame) - 75 - 20, (CGRectGetHeight(self.frame) - 28) / 2, 75, 28);
    self.titleLabel.frame = CGRectMake(CGRectGetMaxX(self.iconImageView.frame) + 10, CGRectGetMinY(self.iconImageView.frame), CGRectGetMinX(self.button.frame) - CGRectGetMaxX(self.iconImageView.frame) - 20, 20);
    self.descLabel.frame = CGRectMake(CGRectGetMinX(self.titleLabel.frame), CGRectGetMaxY(self.titleLabel.frame), CGRectGetWidth(self.titleLabel.frame), 16);
}

- (MMFeedGuideCardItem *)cardItem {
    if ([self.item isKindOfClass:[MMFeedGuideCardItem class]]) {
        return (MMFeedGuideCardItem *)self.item;
    }
    
    return nil;
}

- (void)setItem:(MMFeedComponentItem *)item {
    if (self.item == item) {
        return;
    }
    
    [super setItem:item];
    if (self.cardItem.icon) {
        [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:self.cardItem.icon]];
    }
    self.titleLabel.text = self.cardItem.title;
    self.descLabel.text = self.cardItem.desc;
    [self.button setTitle:self.cardItem.button_text forState:UIControlStateNormal];
    [self setNeedsLayout];
}

- (void)onButtonClicked:(id)sender {
    [self.cardItem clickButton];
}

+ (CGFloat)viewHeight:(MMFeedComponentItem *)item maxWidth:(CGFloat)maxWidth {
    return 50.0f;
}

@end
