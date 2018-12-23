//
//  ViewController.m
//  FeedDemo
//
//  Created by 朱志文 on 2018/12/22.
//  Copyright © 2018 朱志文. All rights reserved.
//

#import "ViewController.h"
#import "RETableViewManager.h"
#import "MMFeedListItem.h"
#import "MMFeedCell.h"
#import "MMFeedModel.h"

@interface ViewController ()<RETableViewManagerDelegate>
@property (nonatomic, strong) RETableViewManager *tableManager;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RETableViewSection *tableSection;
@end

@implementation ViewController {
    MMFeedListItem *_listItem;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    _listItem = [[MMFeedListItem alloc] init];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style: UITableViewStylePlain];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    [self.view addSubview: self.tableView];
    self.tableView.estimatedRowHeight = 0.0f;
    self.tableView.estimatedSectionHeaderHeight = 0.0f;
    self.tableView.estimatedSectionFooterHeight = 0.0f;
    
    self.tableManager = [[RETableViewManager alloc] initWithTableView:self.tableView delegate:self];
    self.tableSection = [[RETableViewSection alloc] init];
    [self.tableManager addSection: self.tableSection];
    
    NSDictionary *registerCells = [_listItem registerCells];
    for (NSString *key in [registerCells allKeys]) {
        NSString *value = registerCells[key];
        self.tableManager[key] = value;
    }
    
    [self testData];
}

- (void)testData {
    NSDictionary *style2Dic = @{
                                @"id":@"1",
                                @"style2":@{
                                        @"note":@"测试一下",
                                        @"guide_card": @{
                                                @"icon":@"",
                                                @"title":@"吴一二",
                                                @"desc":@"资料未完善",
                                                @"target":@"https://www.baidu.com",
                                                @"button": @{
                                                        @"text":@"去完善",
                                                        @"target": @"https://maimai.cn",
                                                        }
                                                }
                                        }
                                
                                };
    
    NSDictionary *dic = @{
                          @"feeds": @[style2Dic, style2Dic, style2Dic, style2Dic, style2Dic,style2Dic, style2Dic, style2Dic, style2Dic]
                          };
    
    NSMutableArray *itemArray = [NSMutableArray array];
    MMFeedEnvelop *feedEnvelop = [MMFeedEnvelop modelFromDic:dic];
    for (MMFeedModel *model in feedEnvelop.feeds) {
        MMFeedItem *item = [_listItem feedItemWithModel:model];
        if (item) {
            [itemArray addObject:item];
        }
    }
    
    [self.tableSection removeAllItems];
    [self.tableSection addItemsFromArray:itemArray];
    [self.tableView reloadData];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![cell isKindOfClass:[MMFeedCell class]]) {
        return;
    }
    
    MMFeedCell *feedCell = (MMFeedCell *)cell;
    MMFeedItem *feedItem = feedCell.feedItem;
    [_listItem handleWillDisplayItem:feedItem atIndex:indexPath.row];
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![cell isKindOfClass:[MMFeedCell class]]) {
        return;
    }
    
    MMFeedCell *feedCell = (MMFeedCell *)cell;
    MMFeedItem *feedItem = feedCell.feedItem;
    [_listItem handleDidEndDisplayItem:feedItem atIndex:indexPath.row];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (![cell isKindOfClass:[MMFeedCell class]]) {
        return;
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    MMFeedCell *feedCell = (MMFeedCell *)cell;
    MMFeedItem *feedItem = feedCell.feedItem;
    [_listItem handleDidSelectItem:feedItem atIndex:indexPath.row];
}

@end
