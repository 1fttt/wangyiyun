//
//  MyTableViewCell.m
//  网易云
//
//  Created by 房彤 on 2020/7/18.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //if(self)
   if([self.reuseIdentifier isEqualToString:@"ft"]) {
       self.labelName = [[UILabel alloc] init];
       self.labelStr = [[UILabel alloc] init];
       self.btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
       self.btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
       self.btnTouXiang = [UIButton buttonWithType:UIButtonTypeCustom];
       [self.contentView addSubview:_labelName];
       [self.contentView addSubview:_labelStr];
       [self.contentView addSubview:_btn1];
       [self.contentView addSubview:_btn2];
       [self.contentView addSubview:_btnTouXiang];
        
    }
    return self;
}

- (void)layoutSubviews {
    if([self.reuseIdentifier isEqualToString:@"ft"]) {
    self.labelName.frame = CGRectMake(105, 23, 70, 60);
    self.labelStr.frame = CGRectMake(300, 25, 100, 60);
    self.btnTouXiang.frame = CGRectMake(5, 10, 110, 110);
    self.btn1.frame = CGRectMake(85, 67, 100, 40);
    self.btn2.frame = CGRectMake(168, 77, 43, 20);
    
        
}
}
@end
