//
//  UITableViewCell+WQAdd.h
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^WQTableViewDidSelectedCell)(UITableViewCell * _Nullable cell);

NS_ASSUME_NONNULL_BEGIN

@interface UITableViewCell (WQAdd)

@property (nonatomic, strong) NSNumber *numberIdentifer;

@property (nonatomic, copy) WQTableViewDidSelectedCell selectedBlock;

@end

NS_ASSUME_NONNULL_END
