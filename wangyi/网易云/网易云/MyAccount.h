//
//  MyAccount.h
//  网易云
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyAccount : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>

@property UITableView *tableView;
@property NSMutableArray *array;
@end

NS_ASSUME_NONNULL_END
