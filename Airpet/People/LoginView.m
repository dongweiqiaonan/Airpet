//
//  LoginView.m
//  Airpet
//
//  Created by 董伟 on 2017/12/13.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

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
        self.loginTextField = [[UITextField alloc] initWithFrame:CGRectMake(100*proportion, 120*proportion, 230*proportion, 40)];
        self.loginTextField.placeholder = @"请输入账号";
        self.loginTextField.backgroundColor = [UIColor whiteColor];
        self.loginTextField.borderStyle = UITextBorderStyleLine;
        self.loginTextField.textColor = [UIColor grayColor];
        self.loginTextField.font = [UIFont systemFontOfSize:18];
        self.loginTextField.clearButtonMode = UITextFieldViewModeAlways;
        self.loginTextField.textAlignment = UITextAlignmentLeft;
        self.loginTextField.keyboardType = UIKeyboardTypeNumberPad;
        self.loginTextField.delegate =self;
        
        self.passWordTextField = [[UITextField alloc] initWithFrame:CGRectMake(100*proportion, CGRectGetMaxY(self.loginTextField.frame)+20, 230*proportion, 40)];
        self.passWordTextField.placeholder = @"请输入密码";
        self.passWordTextField.backgroundColor = [UIColor whiteColor];
        self.passWordTextField.borderStyle = UITextBorderStyleLine;
        self.passWordTextField.textColor = [UIColor grayColor];
        self.passWordTextField.font = [UIFont systemFontOfSize:18];
        self.passWordTextField.clearButtonMode = UITextFieldViewModeAlways;
        self.passWordTextField.textAlignment = UITextAlignmentLeft;
        self.passWordTextField.keyboardType = UIKeyboardTypeNumberPad;
        self.passWordTextField.delegate =self;
        
        [self addSubview:self.loginTextField];
        [self addSubview:self.passWordTextField];
        
    }
    return self;
}
@end
