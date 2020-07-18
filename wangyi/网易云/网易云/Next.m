//
//  Next.m
//  网易云
//
//  Created by 房彤 on 2020/7/16.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Next.h"

@interface Next ()

@end

@implementation Next

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"6.jpg"]];
    self.title = @"我的百度云盘";

    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"8.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"10.png"] style:UIBarButtonItemStyleDone target:self action:nil];
    //self.navigationItem.rightBarButtonItem = rightBtn;
   
 
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"9.png"] style:UIBarButtonItemStyleDone target:self action:nil];
    NSArray *arrayBtn = [NSArray arrayWithObjects:rightBtn, btn, nil];
    
    self.navigationItem.rightBarButtonItems = arrayBtn;
    
    
     self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
}

- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
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
