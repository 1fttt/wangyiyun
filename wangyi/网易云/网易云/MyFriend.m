//
//  MyFriend.m
//  网易云
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyFriend.h"

@interface MyFriend ()

@end

@implementation MyFriend

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"云村" image:[UIImage imageNamed:@"4.png"] tag:4];
    self.tabBarItem = tabBarItem;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
