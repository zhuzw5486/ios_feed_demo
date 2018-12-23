//
//  MMFeedCell.m
//  Feed
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 taou. All rights reserved.
//

#import "MMFeedCell.h"

@implementation MMFeedCell

+(CGFloat) calculateHeightWithItem: (MMCachedHeightTableItem*)aItem tableViewManager: (RETableViewManager*)aTableViewManager {
    return [self cellHeightWithItem:(MMFeedItem *)aItem];
}

+ (CGFloat)cellHeightWithItem:(MMFeedItem *)item {
    CGFloat height = [[self styleViewClass] viewHeight:item.styleItem maxWidth:0];
    //height += actionBarHeight;
    return height;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    [self.styleView prepareForReuse];
}

- (MMFeedItem *)feedItem {
    return (MMFeedItem *)self.item;
}

+ (Class)styleViewClass {
    assert(false);
    return nil;
}

- (void)cellDidLoad {
    [super cellDidLoad];
    [self setupStyleView];
    [self setupActionView];
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat y = 0;
    [self layoutStyleView:y];
    y = CGRectGetMaxY(self.styleView.frame);
    [self layoutActionBar:y];
    //...
}

- (void)layoutStyleView:(CGFloat)y {
    CGFloat styleHeight = [[self.class styleViewClass] viewHeight:self.feedItem.styleItem maxWidth:0];
    self.styleView.frame = CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, styleHeight);
}

- (void)layoutActionBar:(CGFloat)y {
    
}

- (void) cellWillAppear {
    [super cellWillAppear];
    self.styleView.item = self.feedItem.styleItem;
    //...
    [self setNeedsLayout];
}

- (void)setupStyleView {
    MMFeedComponentView *styleView = [[[self.class styleViewClass] alloc] init];
    styleView.userInteractionEnabled = YES;
    [self.contentView addSubview:styleView];
    _styleView = styleView;
}

- (void)setupActionView {
    
}

@end
