//
//  MyMusic.m
//  网易云
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyMusic.h"
#import "Next.h"
#import "MyTableViewCell.h"

@interface MyMusic ()

@end

@implementation MyMusic

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"3.png"] tag:3];
    self.title = @"";
    self.tabBarItem = tabBarItem;

    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yun.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
   
    leftBtn.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"10.png"] style:UIBarButtonItemStyleDone target:self action:nil];
    rightBtn.tintColor = [UIColor blackColor];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    //tableView
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];

    self.tableView.dataSource = self;
    self.tableView.delegate = self;
   
    
    //去黑线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
      
    [self.view addSubview:self.tableView];
}




//单元格行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 9;
}

//单元格高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        return 120;
    } else if(indexPath.row == 1) {
        return 105;
    } else if(indexPath. row == 2 || indexPath.row == 4 || indexPath.row == 6) {
        return 53;
    } else if (indexPath.row == 3) {
        return 183;
    } else {
        return 100;
    }
}


//单元格内容
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell0 = [[UITableViewCell alloc] init];
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    if(indexPath.row == 0) {
        MyTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"ft"];
        if (cell1 == nil) {
            cell1 = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ft"];
            [cell1.btnTouXiang setImage:[UIImage imageNamed:@"touxiang.png"] forState:UIControlStateNormal];
             [cell1.btn1 setImage:[UIImage imageNamed:@"vip.png"] forState:UIControlStateNormal];
             [cell1.btn2 setImage:[UIImage imageNamed:@"Lv.png"] forState:UIControlStateNormal];

             cell1.labelName.text = @"F";
             cell1.labelName.font = [UIFont systemFontOfSize:22];
             cell1.labelStr.text = @"开通黑胶VIP >";
             cell1.labelStr.font = [UIFont systemFontOfSize:15];
             cell1.backgroundColor = UIColor.clearColor;
        }
        
        return cell1;
    }
    if(indexPath.row == 1) {
    
        if (cell == nil) {
            cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UIButton *music = [UIButton buttonWithType:UIButtonTypeCustom];
            music.frame = CGRectMake(35, 16, 50, 50);
            [music setImage:[UIImage imageNamed:@"bendi.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:music];
            
            UIButton *dianTai = [UIButton buttonWithType:UIButtonTypeCustom];
            dianTai.frame = CGRectMake(130, 17, 50, 50);
            [dianTai setImage:[UIImage imageNamed:@"diantai.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:dianTai];
            
            UIButton *shouCang = [UIButton buttonWithType:UIButtonTypeCustom];
            shouCang.frame = CGRectMake(227, 16, 50, 50);
            [shouCang setImage:[UIImage imageNamed:@"shoucang.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:shouCang];
            
            UIButton *xinGe = [UIButton buttonWithType:UIButtonTypeCustom];
            xinGe.frame = CGRectMake(327, 16, 50, 50);
            [xinGe setImage:[UIImage imageNamed:@"xinge.png"] forState:UIControlStateNormal];
            [cell addSubview:xinGe];
            
            UILabel *myMusic = [[UILabel alloc] initWithFrame:CGRectMake(29, 60, 70, 40)];
            myMusic.font = [UIFont systemFontOfSize:16];
            myMusic.text = @"本地音乐";
            [cell addSubview:myMusic];
            
            UILabel *myDianTai = [[UILabel alloc] initWithFrame: CGRectMake(124, 61, 70, 40)];
            myDianTai.font = [UIFont systemFontOfSize:16];
            myDianTai.text = @"我的电台";
            [cell addSubview:myDianTai];
            
            UILabel *myShouCang = [[UILabel alloc] initWithFrame:CGRectMake(220, 61, 70, 40)];
            myShouCang.font = [UIFont systemFontOfSize:16];
            myShouCang.text = @"我的收藏";
            [cell addSubview:myShouCang];
            
            UILabel *myXinge = [[UILabel alloc] initWithFrame:CGRectMake(320, 62, 70, 40)];
            myXinge.font = [UIFont systemFontOfSize:16];
            myXinge.text = @"关注新歌";
            [cell addSubview:myXinge];
            
        }
        return cell;
    }
    if(indexPath.row == 2) {
      
        if(cell == nil) {
            cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UILabel *myMusic = [[UILabel alloc] initWithFrame:CGRectMake(20, 8, 100, 40)];
            myMusic.font = [UIFont systemFontOfSize:21];
            myMusic.text = @"我的音乐";
            [cell.contentView addSubview:myMusic];
            
            UIButton *qiChe = [UIButton buttonWithType:UIButtonTypeCustom];
            qiChe.frame = CGRectMake(339, 8, 40, 40);
            [qiChe setImage:[UIImage imageNamed:@"qiche.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:qiChe];
            
            //小箭头
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            
        }
        
        return cell;
    }
    if(indexPath.row == 3) {
    
        if(cell == nil) {
            cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UIButton *myFavourite = [UIButton buttonWithType:UIButtonTypeCustom];
            myFavourite.frame = CGRectMake(20, 10, 118, 160);
            [myFavourite setImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:myFavourite];
                   
            UIButton *myFM = [UIButton buttonWithType:UIButtonTypeCustom];
            myFM.frame = CGRectMake(149, 10, 118, 160);
            [myFM setImage:[UIImage imageNamed:@"b.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:myFM];
                   
            UIButton *yunBei = [UIButton buttonWithType:UIButtonTypeCustom];
            yunBei.frame = CGRectMake(278, 10, 118, 160);
            [yunBei setImage:[UIImage imageNamed:@"c.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:yunBei];
                   
        }
        return cell;
    }
    if(indexPath.row == 4) {
   
        if(cell == nil) {
            cell = [[MyTableViewCell   alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 7, 100, 40)];
            label.font = [UIFont systemFontOfSize:21];
            label.text = @"最近播放";
            [cell.contentView addSubview:label];
            
            UILabel *str = [[UILabel alloc] initWithFrame:CGRectMake(340, 7, 50 , 40)];
            str.font = [UIFont systemFontOfSize:17];
            str.textColor = [UIColor grayColor];
            str.text = @"更多 ";
            [cell.contentView addSubview:str];
            
            //小箭头
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        
        
        return cell;
    }
    if(indexPath.row == 5) {
      
        if(cell == nil) {
            cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UIButton *btnYiBo = [UIButton buttonWithType:UIButtonTypeCustom];
            btnYiBo.frame = CGRectMake(20, 10, 66, 66);
            [btnYiBo setImage:[UIImage imageNamed:@"d.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:btnYiBo];
            
            UIButton *btnGeDan = [UIButton buttonWithType:UIButtonTypeCustom];
            btnGeDan.frame = CGRectMake(215, 11, 66, 66);
            [btnGeDan setImage:[UIImage imageNamed:@"e.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:btnGeDan];
            
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(94, 11, 102, 40)];
            label1.font = [UIFont systemFontOfSize:16];
            label1.text = @"全部已播歌曲";
            [cell.contentView addSubview:label1];
            
            UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(94, 37, 100, 40)];
            label2.font = [UIFont systemFontOfSize:14];
            label2.text = @"1000首";
            label2.textColor = [UIColor grayColor];
            [cell.contentView addSubview:label2];
            
            UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(290, 11, 102, 40)];
            label3.font = [UIFont systemFontOfSize:16];
            label3.text = @"歌单：abc";
            [cell.contentView addSubview:label3];
                   
            UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(290, 37, 100, 40)];
            label4.font = [UIFont systemFontOfSize:14];
            label4.text = @"继续播放";
            label4.textColor = [UIColor grayColor];
            [cell.contentView addSubview:label4];
            
        }
        
        return cell;
    }
    if(indexPath.row == 6) {
     
        if(cell == nil) {
            cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UILabel *geDan = [[UILabel alloc] initWithFrame:CGRectMake(20, 8, 399, 40)];
            geDan.font = [UIFont systemFontOfSize:21];
            geDan.text = @"创建歌单    收藏歌单    歌单助手";
            [cell.contentView addSubview:geDan];
            
            UIButton *jiaHao = [UIButton buttonWithType:UIButtonTypeCustom];
            jiaHao.frame = CGRectMake(335, 8, 40, 40);
            [jiaHao setImage:[UIImage imageNamed:@"jiahao.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:jiaHao];
            
            UIButton *gengDuo = [UIButton buttonWithType:UIButtonTypeCustom];
            gengDuo.frame = CGRectMake(372, 8, 40, 40);
            [gengDuo setImage:[UIImage imageNamed:@"gengduo.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:gengDuo];
            
        }
        
        return cell;
    }
    if(indexPath.row == 7) {
    
        if(cell == nil) {
            cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
            btn1.frame = CGRectMake(20, 10, 66, 66);
            [btn1 setImage:[UIImage imageNamed:@"k.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:btn1];
            
            UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
            btn2.frame = CGRectMake(215, 11, 66, 66);
            [btn2 setImage:[UIImage imageNamed:@"g.png"] forState:UIControlStateNormal];
            [cell.contentView addSubview:btn2];
            
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(94, 11, 102, 40)];
            label1.font = [UIFont systemFontOfSize:16];
            label1.text = @"翻唱";
            [cell.contentView addSubview:label1];
            
            UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(94, 37, 100, 40)];
            label2.font = [UIFont systemFontOfSize:14];
            label2.text = @"1000首";
            label2.textColor = [UIColor grayColor];
            [cell.contentView addSubview:label2];
            
            UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(290, 11, 102, 40)];
            label3.font = [UIFont systemFontOfSize:16];
            label3.text = @"导入外部歌单";
            [cell.contentView addSubview:label3];
        }
        return cell;
        
    }
    
    return cell0;
}
    
    

//点击云朵
- (void)pressLeft {
   // NSLog(@"1");
    //创建新的视图控制器
    Next *next = [[Next alloc] init];
    [self.navigationController pushViewController:next animated:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    
    //设置导航栏背景图片为一个空的image，这样就透明了
    //[self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    //去掉透明后导航栏下边的黑边
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}

@end
