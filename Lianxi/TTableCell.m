//
//  TTableCell.m
//  Lianxi
//
//  Created by md on 16/8/31.
//  Copyright © 2016年 HKQ. All rights reserved.
//

#import "TTableCell.h"

@implementation TTableCell

{
    UIButton *btn;//图片按钮
    UILabel *lab;//详情
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle: style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        //图片按钮
        btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(10,10, 150, 206);
        btn.backgroundColor = [UIColor clearColor];
        [btn setBackgroundImage:[UIImage imageNamed:@"6.png"] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:btn];
        //图片详情
        
        NSString *str = @"电影根据暴雪娱乐单位和传奇电影单位大受欢迎的同名网络游戏改编，讲述的是部落（Horde）和联盟（Alliance）之间的故事。";
        float fWidth = self.frame.size.width - 180;
        CGSize size = [str boundingRectWithSize:CGSizeMake(fWidth, MAXFLOAT) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size;
        lab = [[UILabel alloc] initWithFrame:CGRectMake(170, 10, fWidth, size.height)];
        lab.font = [UIFont systemFontOfSize:15];
        lab.numberOfLines = 0;
        lab.text = str;
        [self.contentView addSubview:lab];
    }
    return self;
}
- (void)btnClick:(UIButton *)sender
{
    if (_mDelegate && _OnBtnClick) {
        SafePerformSelector([_mDelegate performSelector:_OnBtnClick withObject:sender]);
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
