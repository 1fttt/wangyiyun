//
//  MyTableViewCell1.m
//  网易云
//
//  Created by 房彤 on 2020/7/17.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyTableViewCell1.h"

@implementation MyTableViewCell1

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //if(self)
    if([self.reuseIdentifier isEqualToString:@"cell"]) {
        self.label1 = [[UILabel alloc] init];
        self.label2 = [[UILabel alloc] init];
        self.btn = [[UIButton alloc] init];
        [self.contentView addSubview:_label1];
        [self.contentView addSubview:_label2];
        [self.contentView addSubview:_btn];
        
    }
    return self;
}

- (void)layoutSubviews {
    self.label1.frame = CGRectMake(50, 70, 150, 60);
    self.btn.frame = CGRectMake(90, 80, 70, 70);
    
}

@end
