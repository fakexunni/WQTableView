//
//  WQSectionConfig.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "WQSectionConfig.h"

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


@end
