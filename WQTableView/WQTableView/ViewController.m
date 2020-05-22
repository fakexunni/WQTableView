//
//  ViewController.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "ViewController.h"
#import "WQTableViewManager.h"
#import <Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) WQTableViewManager *tableViewManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableViewManager = [[WQTableViewManager alloc] init];
    [self.view addSubview:_tableViewManager.tableView];
    [_tableViewManager.tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
    
    WQSectionConfig *config = [[WQSectionConfig alloc] initWithSectionType:WQSectionTypeHeader sectionTitle:nil];
    [_tableViewManager addOneSection:config];
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = @"sdfsdfsdf";
    [_tableViewManager addTableViewCell:cell didSelect:^(UITableViewCell * _Nullable cell) {
        NSLog(@"111111111111");
    }];
    
    UITableViewCell *cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell1.textLabel.text = @"1222222";
    [_tableViewManager addTableViewCell:cell1 didSelect:^(UITableViewCell * _Nullable cell) {
        NSLog(@"2222222222");
    }];
}


@end
