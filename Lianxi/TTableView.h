//
//  TTableView.h
//  Lianxi
//
//  Created by md on 16/8/31.
//  Copyright © 2016年 HKQ. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TouchTableViewDelegate <NSObject>

@optional

- (void)tableView:(UITableView *)tableView
     touchesBegan:(NSSet *)touches
        withEvent:(UIEvent *)event;

- (void)tableView:(UITableView *)tableView
 touchesCancelled:(NSSet *)touches
        withEvent:(UIEvent *)event;

- (void)tableView:(UITableView *)tableView
     touchesEnded:(NSSet *)touches
        withEvent:(UIEvent *)event;

- (void)tableView:(UITableView *)tableView
     touchesMoved:(NSSet *)touches
        withEvent:(UIEvent *)event;


@end
@interface TTableView : UITableView
{
@private
    id touchDelegate;
}

@property (nonatomic,assign) id<TouchTableViewDelegate> touchDelegate;

@end
