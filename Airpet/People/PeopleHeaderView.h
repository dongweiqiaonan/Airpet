//
//  PeopleHeaderView.h
//  Airpet
//
//  Created by 董伟 on 2017/12/7.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^loginButtonClickBlock)();

@interface PeopleHeaderView : UIView

@property(nonatomic,strong) UIImageView * headerImageView;
@property(nonatomic,strong) UIButton * headerButton;
@property(nonatomic,strong) UILabel * nameLabel;
@property(nonatomic,strong) UIButton * loginButton;
@property(nonatomic,copy) loginButtonClickBlock login_block;

@end
