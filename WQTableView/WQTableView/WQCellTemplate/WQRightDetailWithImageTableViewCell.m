//
//  WQRightDetailWithImageTableViewCell.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "WQRightDetailWithImageTableViewCell.h"

@interface WQRightDetailWithImageTableViewCell ()

@property (nonatomic, strong) UIImageView *leftImageView;

@property (nonatomic, strong) UIImageView *rightImageView;

@property (nonatomic, strong) UILabel *leftLabel;

@property (nonatomic, strong) UILabel *rightLabel;


@property (nonatomic, strong) UIStackView *stackView;

@end

@implementation WQRightDetailWithImageTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configBasicUI];
    }
    return self;
}

- (void)configTitleWithText:(NSString *)title
                  leftImage:(UIImage *)image
                   leftText:(NSString *)leftText
                  rightText:(NSString *)rightText
                 rightImage:(UIImage *)rightImage
{
    if (image) {
        
    }

}

- (void)configBasicUI
{
    self.textLabel.font = [UIFont systemFontOfSize:16];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    self.imageView.frame = CGRectMake(0, 0, 21, 21);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


#pragma -mark lazy

- (UIImageView *)leftImageView
{
    if (!_leftImageView) {
        _leftImageView = [[UIImageView alloc] init];
    }
    return _leftImageView;
}

- (UIImageView *)rightImageView
{
    if (!_rightImageView) {
        _rightImageView = [[UIImageView alloc] init];
    }
    return _rightImageView;
}

- (UILabel *)leftLabel
{
    if (!_leftLabel) {
        _leftLabel = [[UILabel alloc] init];
        _leftLabel.font = [UIFont systemFontOfSize:16];
    }
    return _leftLabel;
}

- (UILabel *)rightLabel
{
    if (!_rightLabel) {
        _rightLabel = [[UILabel alloc] init];
        _rightLabel.font = [UIFont systemFontOfSize:16];
        _rightLabel.textColor = [UIColor darkTextColor];
    }
    return _leftLabel;
}



@end
