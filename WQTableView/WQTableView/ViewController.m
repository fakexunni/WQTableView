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
    
    WQSectionConfig *config = [[WQSectionConfig alloc] initWithSectionType:WQSectionTypeHeader sectionTitle:@"这里是头部视图"];
    [_tableViewManager addOneSection:config];
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = @"这里是第一个cell";
    [_tableViewManager addTableViewCell:cell didSelect:^(UITableViewCell * _Nullable cell) {
        NSLog(@"111111111111");
    }];
    
    UITableViewCell *cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell1.textLabel.text = @"这里是第二个cell";
    [_tableViewManager addTableViewCell:cell1 didSelect:nil];
    
    WQRightDetailTableViewCell *detailCell = [[WQRightDetailTableViewCell alloc] init];
    [detailCell configTitleWithText:@"我是标题"];
    [_tableViewManager addTableViewCell:detailCell didSelect:^(UITableViewCell * _Nullable cell) {
        NSLog(@"22222");
    }];
    
    WQSwitchButtonTableViewCell *switchCell = [[WQSwitchButtonTableViewCell alloc] init];
    [switchCell configTitleWithText:@"我是开关" switchState:YES stateChange:^(BOOL state) {
        NSLog(@"开关:%d",state);
    }];
    [_tableViewManager addTableViewCell:switchCell didSelect:nil];
}


@end
