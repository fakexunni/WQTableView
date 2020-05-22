//
//  WQTableViewManager.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "WQTableViewManager.h"
#import "UITableViewCell+WQAdd.h"
#import <YYKit.h>

@interface WQTableViewManager () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, copy) WQTableViewDidSelectedCell selectedCellBlock;

@property (nonatomic, strong) NSMutableArray *cellArray;

@property (nonatomic, strong) NSMutableArray *sectionHeaderArray;

@property (nonatomic, strong) NSMutableArray *sectionFooterArray;

@end

@implementation WQTableViewManager


- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;;
}

- (void)addOneSection:(WQSectionConfig *)sectionConfig
{
    if (sectionConfig.sectionType == WQSectionTypeHeader) {
        //头部的section，需要添加一个section
        [self.sectionHeaderArray addObject:sectionConfig];
        NSMutableArray *sectionArray = [[NSMutableArray alloc] init];
        [self.cellArray addObject:sectionArray];
    }
    else{
        [self.sectionFooterArray addObject:sectionConfig];
    }
}

- (void)addTableViewCell:(UITableViewCell *)cell
               didSelect:(WQTableViewDidSelectedCell)selectedBlock
{
    if (self.cellArray.count == 0) {
        NSAssert(0, @"请先添加一个WQSectionConfig");
        return;
    }
    cell.selectedBlock = selectedBlock;
    NSMutableArray *sectionArray = [self.cellArray lastObject];
    [sectionArray addObject:cell];
}

- (void)reloadTableView
{
    [self.tableView reloadData];
}

#pragma -mark UITableViewDataSource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSMutableArray *sectionArray = [_cellArray objectOrNilAtIndex:indexPath.section];
    UITableViewCell *cell = [sectionArray objectOrNilAtIndex:indexPath.row];
    if (!cell.selectedBlock) {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSMutableArray *sectionArray = [self.cellArray objectOrNilAtIndex:section];
    return sectionArray.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionHeaderArray.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    WQSectionConfig *config = [self.sectionHeaderArray objectOrNilAtIndex:section];
    return [config sectionTitleView];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    WQSectionConfig *config = [self.sectionFooterArray objectOrNilAtIndex:section];
    return [config sectionTitleView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    WQSectionConfig *config = [self.sectionHeaderArray objectOrNilAtIndex:section];
    return [config sectionHeigh];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    WQSectionConfig *config = [self.sectionFooterArray objectOrNilAtIndex:section];
    return [config sectionHeigh];
}


#pragma -mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSMutableArray *sectionArray = [_cellArray objectOrNilAtIndex:indexPath.section];
    UITableViewCell *cell = [sectionArray objectOrNilAtIndex:indexPath.row];
    if (cell.selectedBlock) {
        cell.selectedBlock(cell);
    }
}

#pragma -mark lazy

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}


- (NSMutableArray *)cellArray
{
    if (!_cellArray) {
        _cellArray = [[NSMutableArray alloc] init];
    }
    return _cellArray;
}

- (NSMutableArray *)sectionHeaderArray
{
    if (!_sectionHeaderArray) {
        _sectionHeaderArray = [[NSMutableArray alloc] init];
    }
    return _sectionHeaderArray;
}

- (NSMutableArray *)sectionFooterArray
{
    if (!_sectionFooterArray) {
        _sectionFooterArray = [[NSMutableArray alloc] init];
    }
    return _sectionFooterArray;
}

@end
