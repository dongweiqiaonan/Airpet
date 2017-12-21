//
//  RegisterView.m
//  Airpet
//
//  Created by 董伟 on 2017/12/14.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.phoneNum = [[UITextField alloc] initWithFrame:CGRectMake(85*proportion, 120*proportion, 230*proportion, 40)];
        self.phoneNum.backgroundColor = [UIColor whiteColor];
        self.phoneNum.placeholder = @"手机号码";
        self.phoneNum.textColor = [UIColor grayColor];
        self.phoneNum.borderStyle = UITextBorderStyleLine;
        self.phoneNum.font = [UIFont systemFontOfSize:18];
        self.phoneNum.clearButtonMode = UITextFieldViewModeAlways;
        self.phoneNum.textAlignment = NSTextAlignmentLeft;
        self.phoneNum.keyboardType = UIKeyboardTypeDefault;
        self.phoneNum.delegate = self;
        
        self.password = [[UITextField alloc] initWithFrame:CGRectMake(85*proportion, CGRectGetMaxY(self.phoneNum.frame)+20, 230*proportion, 40)];
        self.password.placeholder = @"请输入密码";
        self.password.backgroundColor = [UIColor whiteColor];
        self.password.borderStyle = UITextBorderStyleLine;
        self.password.textColor = [UIColor grayColor];
        self.password.font = [UIFont systemFontOfSize:18];
        self.password.clearButtonMode = UITextFieldViewModeAlways;
        self.password.textAlignment = NSTextAlignmentLeft;
        self.password.keyboardType = UIKeyboardTypeDefault;
        self.password.delegate =self;
        
        self.registerButton = [[UIButton alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(self.password.frame)+200, ScreenWidth-40, 50)];
        self.registerButton.backgroundColor = [UIColor lightGrayColor];
        [self.registerButton setTitle:@"注册" forState:UIControlStateNormal];
        [self.registerButton addTarget:self action:@selector(registerButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:self.phoneNum];
        [self addSubview:self.password];
        [self addSubview:self.registerButton];
        
    }
    return self;
    
}

-(void)registerButtonClick:(UIButton *)sender{
    if (self.registerBtn_block) {
        self.registerBtn_block();
    }
    
}

@end
