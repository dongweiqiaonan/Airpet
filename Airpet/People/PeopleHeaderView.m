//
//  PeopleHeaderView.m
//  Airpet
//
//  Created by 董伟 on 2017/12/7.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "PeopleHeaderView.h"

@implementation PeopleHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 0.3*ScreenHeight)];
        self.headerImageView.userInteractionEnabled = YES;
        self.headerImageView.image = [UIImage imageNamed:@"pet_background.png"];
        [self addSubview:self.headerImageView];
        
         self.headerButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 64*proportion, 64*proportion)];
        self.headerButton.backgroundColor = [UIColor whiteColor];
        [self.headerImageView addSubview:self.headerButton];
        self.headerButton.center = self.headerImageView.center;
        self.headerButton.layer.cornerRadius = 32*proportion;
        self.headerButton.layer.borderColor = [UIColor grayColor].CGColor;
        self.headerButton.layer.borderWidth = 1.0;
        self.headerButton.layer.masksToBounds = YES;
        [self.headerButton setImage:[UIImage imageNamed:@"personHeader.png"] forState:UIControlStateNormal];
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth*0.5-50, CGRectGetMaxY(self.headerButton.frame)+15, 100, 30)];
        self.nameLabel.text = @"裴文新";
        self.nameLabel.textColor = [UIColor blackColor];
        self.nameLabel.backgroundColor = [UIColor clearColor];
        self.nameLabel.font = [UIFont systemFontOfSize:20];
        self.nameLabel.textAlignment = NSTextAlignmentCenter;
        [self.headerImageView addSubview:self.nameLabel];
        self.nameLabel.hidden = YES;//目前新隐藏
        
        self.loginButton = [[UIButton alloc] initWithFrame:CGRectMake(ScreenWidth*0.5-50, CGRectGetMaxY(self.headerButton.frame)+15, 100, 30)];
        self.loginButton.backgroundColor = [UIColor clearColor];
        self.loginButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.loginButton setTitle:[NSString stringWithFormat:@"点击登录"] forState:UIControlStateNormal];
        [self.loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.headerImageView addSubview:self.loginButton];
        
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}

@end
