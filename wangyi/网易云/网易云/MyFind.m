//
//  MyFind.m
//  网易云
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyFind.h"

@interface MyFind ()

@end

@implementation MyFind

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:[UIImage imageNamed:@"1.png"] tag:1];

    self.tabBarItem = tabBarItem;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
   // btn.backgroundColor = [UIColor redColor];
    
  
    
   // [btn setBackgroundImage:[UIImage imageNamed:@"6.png"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    
    
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
