//
//  WQTableViewManager.h
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WQSectionConfig.h"
#import "UITableViewCell+WQAdd.h"
#import "WQRightDetailTableViewCell.h"
#import "WQSwitchButtonTableViewCell.h"
#import "WQRightDetailWithImageTableViewCell.h"

@interface WQTableViewManager : NSObject


@property (nonatomic, strong, readonly) UITableView *tableView;

- (void)addOneSection:(WQSectionConfig *)sectionConfig;

- (void)addTableViewCell:(UITableViewCell *)cell
               didSelect:(WQTableViewDidSelectedCell)selectedBlock;

- (void)reloadTableView;

@end
