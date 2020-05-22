//
//  WQRightDetailTableViewCell.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "WQRightDetailTableViewCell.h"

@implementation WQRightDetailTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configBasicUI];
    }
    return self;
}

- (void)configTitleWithText:(NSString *)title
{
    self.textLabel.text = title;
}

- (void)configBasicUI
{
    self.textLabel.font = [UIFont systemFontOfSize:16];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
