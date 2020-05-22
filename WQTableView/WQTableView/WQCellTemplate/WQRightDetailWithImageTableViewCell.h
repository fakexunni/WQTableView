//
//  WQRightDetailWithImageTableViewCell.h
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WQRightDetailWithImageTableViewCell : UITableViewCell

- (void)configTitleWithText:(NSString *)title
                  leftImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
