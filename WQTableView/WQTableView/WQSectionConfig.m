//
//  WQSectionConfig.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "WQSectionConfig.h"
#import <YYKit.h>

@interface WQSectionConfig ()

@property (nonatomic, copy) NSString *sectionTitle;

@property (nonatomic, strong) UIView *sectionView;

@end

@implementation WQSectionConfig


- (instancetype)initWithSectionType:(WQSectionType)sectionType
                       sectionTitle:(NSString *)sectionTitle
{
    self = [super init];
    if (self) {
        _sectionType = sectionType;
        _sectionTitle = sectionTitle;
    }
    return self;
}

- (instancetype)initWithSectionType:(WQSectionType)sectionType
                       sectionView:(UIView *)sectionView
{
    self = [super init];
    if (self) {
        _sectionType = sectionType;
        _sectionView = sectionView;
    }
    return self;
}

- (UIView *)sectionTitleView
{
    if (_sectionView) {
        return _sectionView;
    }
    if (!_sectionTitle) {
        return nil;
    }
    YYLabel *label = [[YYLabel alloc] initWithFrame:CGRectMake(10, 0, [UIScreen mainScreen].bounds.size.width, 20)];
    label.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1.0];
    label.exclusionPaths = [NSArray arrayWithObject:[UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 15, 20)]];
    label.text = _sectionTitle;
    label.font = [UIFont systemFontOfSize:14];
    return label;
}

- (CGFloat)sectionHeigh
{
    if (_sectionView) {
        return _sectionView.frame.size.height;
    }
    if (_sectionTitle) {
        return 20;
    }
    return 0;
}

@end
