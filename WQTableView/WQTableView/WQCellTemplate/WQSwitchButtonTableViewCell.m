//
//  WQSwitchButtonTableViewCell.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "WQSwitchButtonTableViewCell.h"

@interface WQSwitchButtonTableViewCell ()

@property (nonatomic, copy) WQStateChangeBlock stateChangeBlock;

@property (nonatomic, strong) UISwitch *switchButton;

@end

@implementation WQSwitchButtonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configBasicUI];
    }
    return self;
}


- (void)configTitleWithText:(NSString *)title
                switchState:(BOOL)state
                stateChange:(WQStateChangeBlock)stateChangeBlock
{
    self.textLabel.text = title;
    self.switchButton.on = state;
    _stateChangeBlock = stateChangeBlock;
}

- (void)configBasicUI
{
    self.textLabel.font = [UIFont systemFontOfSize:16];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    _switchButton = [[UISwitch alloc] init];
    [_switchButton addTarget:self action:@selector(switchButtonClick:) forControlEvents:UIControlEventValueChanged];
    self.accessoryView = _switchButton;
}

- (void)switchButtonClick:(id)sender
{
    UISwitch *switchButton = (UISwitch *)sender;
    if (_stateChangeBlock) {
        _stateChangeBlock(switchButton.on);
    }
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
