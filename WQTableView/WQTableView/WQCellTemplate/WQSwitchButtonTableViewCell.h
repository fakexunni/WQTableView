//
//  WQSwitchButtonTableViewCell.h
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^WQStateChangeBlock)(BOOL state);

@interface WQSwitchButtonTableViewCell : UITableViewCell

- (void)configTitleWithText:(NSString *)title switchState:(BOOL)state stateChange:(WQStateChangeBlock)stateChangeBlock;

@end
