//
//  TTableCell.h
//  Lianxi
//
//  Created by md on 16/8/31.
//  Copyright © 2016年 HKQ. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SafePerformSelector(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

@interface TTableCell : UITableViewCell

@property (nonatomic, weak) id mDelegate;//代理
@property (nonatomic, assign) SEL OnBtnClick;//图片点击事件

@end
