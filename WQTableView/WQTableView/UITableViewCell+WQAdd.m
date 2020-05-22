//
//  UITableViewCell+WQAdd.m
//  WQTableView
//
//  Created by xunni zou on 2020/5/22.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "UITableViewCell+WQAdd.h"
#import <objc/runtime.h>
#import "WQTableViewManager.h"

static NSString *strKey = @"strKey";
static NSString *blockKey = @"blockKey";

@implementation UITableViewCell (WQAdd)

- (void)setNumberIdentifer:(NSNumber *)numberIdentifer
{
    objc_setAssociatedObject(self, &strKey, numberIdentifer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (NSNumber *)numberIdentifer
{
   return objc_getAssociatedObject(self,  &strKey);
}

- (void)setSelectedBlock:(WQTableViewDidSelectedCell)selectedBlock
{
    objc_setAssociatedObject(self, &blockKey, selectedBlock, OBJC_ASSOCIATION_COPY);
}

- (WQTableViewDidSelectedCell)selectedBlock
{
    return objc_getAssociatedObject(self,  &blockKey);
}

@end
