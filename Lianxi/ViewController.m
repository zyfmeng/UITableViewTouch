//
//  ViewController.m
//  Lianxi
//
//  Created by md on 16/8/31.
//  Copyright © 2016年 HKQ. All rights reserved.
//

#import "ViewController.h"
#import "TTableView.h"
#import "TTableCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,TouchTableViewDelegate>
{
    TTableView *mTableView;
    UIView *bgView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mTableView = [[TTableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    mTableView.backgroundColor = [UIColor clearColor];
    mTableView.dataSource = self;
    mTableView.delegate = self;
    mTableView.touchDelegate = self;
    [self.view addSubview:mTableView];
}

 //touch结束后的处理
- (void)tableView:(TTableView *)tableView touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = touches.anyObject;
    CGPoint location2 = [touch locationInView:self.view];
    NSLog(@"x == %f\ny == %f",location2.x,location2.y);//点击的坐标
   
}
#pragma mark - UITableView delegate
-  (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 226;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"cell";
    TTableCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[TTableCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identify];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.mDelegate = self;
        cell.OnBtnClick = @selector(OnBtnClick:);//图片触发事件
    }
    return cell;
}
//图片触发事件
- (void)OnBtnClick:(id)sender
{
    NSLog(@"我点的是图片");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
