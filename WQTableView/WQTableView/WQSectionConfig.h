//
//  WQSectionConfig.h
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, WQSectionType) {
    WQSectionTypeHeader,
    WQSectionTypeFooter,
};


@interface WQSectionConfig : NSObject

@property (nonatomic, assign) WQSectionType sectionType;

- (instancetype)initWithSectionType:(WQSectionType)sectionType
                       sectionTitle:(NSString *)sectionTitle;

- (instancetype)initWithSectionType:(WQSectionType)sectionType
                        sectionView:(UIView *)sectionView;

@end
