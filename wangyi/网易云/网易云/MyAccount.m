//
//  MyAccount.m
//  网易云
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyAccount.h"
#import "MyTableViewCell1.h"


@interface MyAccount ()

@end

@implementation MyAccount


- (void)viewWillAppear:(BOOL)animated{
    
    //设置导航栏背景图片为一个空的image，这样就透明了
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    //去掉透明后导航栏下边的黑边
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"账号" image:[UIImage imageNamed:@"5.png"] tag:5];
    self.tabBarItem = tabBarItem;
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"saoyisao.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    leftBtn.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"10.png"] style:UIBarButtonItemStyleDone target:self action:nil];
    rightBtn.tintColor = [UIColor blackColor];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    
    //tableView
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.tableView registerClass:[MyTableViewCell1 class] forCellReuseIdentifier:@"cell"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
  //  self.tableView.estimatedSectionHeaderHeight = 0;
   // self.tableView.estimatedSectionFooterHeight = 0;
   
    //去黑线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
   
    [self.view addSubview:_tableView];
    
    
}



//返回组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}


//返回每组行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = @[ @2, @1, @5, @9, @4, @1];
    return [array[section] intValue];
}






//头部高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

//尾部高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}



- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}


- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}


//获取单元格高度
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0 && indexPath.row == 1){
        return 117;
    } else if(indexPath.section == 0 && indexPath.row == 0) {
        return 65;
    }
    else if(indexPath.section > 1 && indexPath.section < 4 && indexPath.row == 0) {
        return 42;
    } else if(indexPath.section == 5) {
        return 66;
    }
    return 50;
}

//创建单元格对象
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSString *str = @"cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"cell0"];;
    UITableViewCell *cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
    UITableViewCell *cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2"];
    UITableViewCell *cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3"];
    UITableViewCell *cell4 = [_tableView dequeueReusableCellWithIdentifier:@"cell4"];
    UITableViewCell *cell5 = [_tableView dequeueReusableCellWithIdentifier:@"cell5"];
    
    /*
    NSArray *arr1 = [NSArray arrayWithObjects:@"", nil];
           NSArray *arr2 = [NSArray arrayWithObjects:@"创作者中心", nil];
           NSArray *arr3 = [NSArray arrayWithObjects:@"",@"演出",@"商城",@"口袋彩铃", @"在线听歌免流量" ,nil];
           NSArray *arr4 = [NSArray arrayWithObjects:@"", @"设置", @"夜间模式", @"定时关闭", @"音乐黑名单", @"鲸云音效", @"添加Siri捷径", @"音乐闹钟", @"青少面模式", nil];
           NSArray *arr5 = [NSArray arrayWithObjects:@"我的订单", @"优惠券", @"分享网易云音乐", @"关于", nil];
           
    */
   // cell.selectedBackgroundView.backgroundColor = [UIColor whiteColor];
    if (indexPath.section == 0 && indexPath.row == 0) {
        if(cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell1"];
        }
      //  UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 10, 50, 50)];
        
        //设置成圆形
       // btn.layer.cornerRadius=self.view.frame.size.width/2;
       // btn.clipsToBounds = YES;
       // UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
       // [button setBackgroundImage:[UIImage imageNamed:@"6.jpg"] forState:UIControlStateNormal];
      //  button.frame = CGRectMake(20, 10, 50, 50);
       // [cell1 addSubview:button];
        cell1.textLabel.text = @"房彤";
        cell1.detailTextLabel.text = @" Lv.1000";
        cell1.textLabel.font = [UIFont systemFontOfSize:21];
        cell1.imageView.image = [UIImage imageNamed:@"11.png"];
        return cell1;
    } else if(indexPath.section == 0 && indexPath.row == 1) {
        if(cell2 == nil) {
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
        }
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [button1 setBackgroundImage:[UIImage imageNamed:@"16.png"] forState:UIControlStateNormal];
        button1.frame = CGRectMake(40, 20, 50, 50);
        [cell2 addSubview:button1];
        
        UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [button2 setBackgroundImage:[UIImage imageNamed:@"haoyou.png"] forState:UIControlStateNormal];
        button2.frame = CGRectMake(136, 20, 50, 50);
        [cell2 addSubview:button2];
        
        UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [button3 setBackgroundImage:[UIImage imageNamed:@"zhuye3.png"] forState:UIControlStateNormal];
        button3.frame = CGRectMake(232, 22, 45, 45);
        [cell2 addSubview:button3];
        
        UIButton *button4 = [UIButton buttonWithType:UIButtonTypeCustom];
        [button4 setBackgroundImage:[UIImage imageNamed:@"zhuangban.png"] forState:UIControlStateNormal];
        button4.frame = CGRectMake(325, 20, 50, 50);
        [cell2 addSubview:button4];
        
        UILabel *xiaoXi = [[UILabel alloc] initWithFrame:CGRectMake(35, 75, 63, 40)];
        xiaoXi.text = @"我的消息";
        xiaoXi.font = [UIFont systemFontOfSize:15];
        [cell2 addSubview:xiaoXi];
        
        UILabel *friend = [[UILabel alloc] initWithFrame:CGRectMake(130, 75, 63, 40)];
        friend.text = @"我的好友";
        friend.font = [UIFont systemFontOfSize:15];
        [cell2 addSubview:friend];
        
        UILabel * zhuYe= [[UILabel alloc] initWithFrame:CGRectMake(225, 75, 63, 40)];
        zhuYe.text = @"个人主页";
        zhuYe.font = [UIFont systemFontOfSize:15];
        [cell2 addSubview:zhuYe];
        
        UILabel *zhuangBan = [[UILabel alloc] initWithFrame:CGRectMake(320, 75, 63, 40)];
        zhuangBan.text = @"个人装扮";
        zhuangBan.font = [UIFont systemFontOfSize:15];
        [cell2 addSubview:zhuangBan];
    
        return cell2;
        
    } else if(indexPath.section > 1 && indexPath.section < 4 && indexPath.row == 0) {
        if(cell3 == nil) {
            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
        }
        if(indexPath.section == 2) {
            cell3.textLabel.text = @"音乐服务";
            cell3.textLabel.font = [UIFont systemFontOfSize:15];
            
        } else{
            cell3.textLabel.text = @"小工具";
            cell3.textLabel.font = [UIFont systemFontOfSize:15];
        }
        return cell3;
        
    } else if(indexPath.section == 3 && indexPath.row == 2) {
        if(cell4 == nil) {
            cell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell4"];
            UISwitch *mySwitch = [[UISwitch alloc] init];
            mySwitch.frame = CGRectMake(350, 15, 80, 40);
            mySwitch.on = YES;
            [cell4.contentView addSubview:mySwitch];
        }
        cell4.textLabel.text = @"   夜间模式";
        cell4.textLabel.font = [UIFont systemFontOfSize:19];
        cell4.imageView.image = [UIImage imageNamed:@"night.png"];
   
        return cell4;
    } else if(indexPath.section == 5) {
        if(cell5 == nil) {
            cell5 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell5"];
            
        }
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(129, 7, 140, 60);
        [btn setTitle:@"退出登录" forState:UIControlStateNormal];
        btn.tintColor = [UIColor redColor];
        //btn.backgroundColor = [UIColor redColor];
        btn.titleLabel.font = [UIFont systemFontOfSize:20];
        [btn addTarget:self action:nil forControlEvents:@selector(pressTuichu)];
        [cell5 addSubview:btn];
        return cell5;
    } else{
        
        NSArray *arr1 = @[@""];
        NSArray *arr2 = @[@"创作者中心"];
        NSArray *arr3 = @[@"",@"  演出",@"  商城",@" 口袋彩铃", @"  在线听歌免流量" ];
        NSArray *arr4 = @[@"", @"  设置", @"  夜间模式", @"  定时关闭", @"  音乐黑名单", @"  鲸云音效", @"  添加Siri捷径", @"  音乐闹钟", @"  青少年模式"];
        NSArray *arr5 = @[@"  我的订单", @"  优惠券", @"  分享网易云音乐", @"  关于"];
        
        _array = [[NSMutableArray alloc] init];
        [_array addObject:arr1];
        [_array addObject:arr2];
        [_array addObject:arr3];
        [_array addObject:arr4];
        [_array addObject:arr5];
        
    
        if(cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell0"];
        }
        
        /*
        if(indexPath.section == 1 && indexPath.row == 0) {
                cell.textLabel.text = @"创作者中心";
               // cell.imageView.image = [UIImage imageNamed:@""];
        } else if(indexPath.section == 2) {
                if(indexPath.row == 1) {
                    cell.textLabel.text = @"创作者中心";
                   // cell.imageView.image = [UIImage imageNamed:@""];
                }
                if(indexPath.row == 2) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                }
                if (indexPath.row == 3) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                }
        } else if(indexPath.section == 3) {
                if(indexPath.row == 1) {
                    cell.textLabel.text = @"创作者中心";
                   // cell.imageView.image = [UIImage imageNamed:@""];
                }else if(indexPath.row == 3) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                } else if (indexPath.row == 4) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                }else if(indexPath.row == 5) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                } else if (indexPath.row == 6) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                }else if(indexPath.row == 7) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                } else if (indexPath.row == 8) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                }
        } else if(indexPath.section == 4) {
                if(indexPath.row == 0) {
                    cell.textLabel.text = @"创作者中心";
                  //  cell.imageView.image = [UIImage imageNamed:@""];
                } else if(indexPath.row == 2) {
                    cell.textLabel.text = @"创作者中心";
                //    cell.imageView.image = [UIImage imageNamed:@""];
                }
                else if(indexPath.row == 2) {
                    cell.textLabel.text = @"创作者中心";
                    //cell.imageView.image = [UIImage imageNamed:@""];
                } else if (indexPath.row == 3) {
                    cell.textLabel.text = @"创作者中心";
                   // cell.imageView.image = [UIImage imageNamed:@""];
                }
        }
         
         */
        cell.textLabel.text = _array[indexPath.section][indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:19];
        NSArray *imageV0 = @[@""];
        NSArray *imageV1 = @[@"1-1.png"];
        NSArray *imageV2 = @[@"", @"2-2.png", @"2-3.png", @"2-4.png", @"2-5.png"];
        NSArray *imageV3 = @[@"", @"3-2.png", @"", @"3-4.png", @"3-5.png", @"3-6.png",@"3-7.png",@"3-8.png",@"3-9.png"];
        NSArray *imageV4 = @[@"4-1.png", @"4-2.png", @"4-3.png", @"4-4.png",];
       
        NSMutableArray *image = [[NSMutableArray alloc] initWithObjects:imageV0, imageV1, imageV2, imageV3, imageV4, nil];
        cell.imageView.image = [UIImage imageNamed:image[indexPath.section][indexPath.row]];
        
        //小箭头
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell;
       
        
        
        
        
    }
}
- (void)pressTuichu {
    NSLog(@"1");
}

@end
   
