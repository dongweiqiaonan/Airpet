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
        self.loginTextField = [[UITextField alloc] initWithFrame:CGRectMake(85*proportion, 120*proportion, 230*proportion, 40)];
        self.loginTextField.placeholder = @"请输入账号";
        self.loginTextField.backgroundColor = [UIColor whiteColor];
        self.loginTextField.borderStyle = UITextBorderStyleLine;
        self.loginTextField.textColor = [UIColor grayColor];
        self.loginTextField.font = [UIFont systemFontOfSize:18];
        self.loginTextField.clearButtonMode = UITextFieldViewModeAlways;
        self.loginTextField.textAlignment = UITextAlignmentLeft;
        self.loginTextField.keyboardType = UIKeyboardTypeDefault;
        self.loginTextField.delegate =self;
        
        self.passWordTextField = [[UITextField alloc] initWithFrame:CGRectMake(85*proportion, CGRectGetMaxY(self.loginTextField.frame)+20, 230*proportion, 40)];
        self.passWordTextField.placeholder = @"请输入密码";
        self.passWordTextField.backgroundColor = [UIColor whiteColor];
        self.passWordTextField.borderStyle = UITextBorderStyleLine;
        self.passWordTextField.textColor = [UIColor grayColor];
        self.passWordTextField.font = [UIFont systemFontOfSize:18];
        self.passWordTextField.clearButtonMode = UITextFieldViewModeAlways;
        self.passWordTextField.textAlignment = UITextAlignmentLeft;
        self.passWordTextField.keyboardType = UIKeyboardTypeDefault;
        self.passWordTextField.delegate =self;
        
        [self addSubview:self.loginTextField];
        [self addSubview:self.passWordTextField];
        
        UIImageView * accountImageView = [[UIImageView alloc] initWithFrame:CGRectMake(45*proportion, 120*proportion, 32*proportion, 32*proportion)];
        accountImageView.image = [UIImage imageNamed:@"account.png"];
        
        UIImageView * passwordImageView = [[UIImageView alloc] initWithFrame:CGRectMake(45*proportion, CGRectGetMaxY(self.loginTextField.frame)+20, 32*proportion, 32*proportion)];
        passwordImageView.image = [UIImage imageNamed:@"password.png"];
        
        [self addSubview:accountImageView];
        [self addSubview:passwordImageView];
        
        self.loginButton = [[UIButton alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(self.passWordTextField.frame)+200, ScreenWidth-40, 50)];
        self.loginButton.backgroundColor = [UIColor lightGrayColor];
        [self.loginButton setTitle:@"登录" forState:UIControlStateNormal];
        [self.loginButton addTarget:self action:@selector(loginButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
        self.registerButton = [[UIButton alloc] initWithFrame:CGRectMake(50, CGRectGetMaxY(self.passWordTextField.frame)+30, 80*proportion, 30)];
        [self.registerButton setTitle:@"注册账号" forState:UIControlStateNormal];
        self.registerButton.backgroundColor = [UIColor whiteColor];
        [self.registerButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.registerButton addTarget:self action:@selector(registerButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        self.forgetpasswordButton = [[UIButton alloc] initWithFrame:CGRectMake(ScreenWidth*0.5+65, CGRectGetMaxY(self.passWordTextField.frame)+30, 80*proportion, 30)];
        [self.forgetpasswordButton setTitle:@"忘记密码" forState:UIControlStateNormal];
        self.forgetpasswordButton.backgroundColor = [UIColor whiteColor];
        [self.forgetpasswordButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.forgetpasswordButton addTarget:self action:@selector(forgetpasswordButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:self.loginButton];
        [self addSubview:self.registerButton];
        [self addSubview:self.forgetpasswordButton];
        
    }
    return self;
}

-(void)loginButtonClick:(UIButton *)sender {
    
    if (self.loginBtn_block) {
        self.loginBtn_block();
    }
}

-(void)registerButtonClick:(UIButton *)sender {
    
    if (self.registerBtn_block) {
        self.registerBtn_block();
    }
    
}

-(void)forgetpasswordButtonClick:(UIButton *)sender {
    
    if (self.forgetBtn_block) {
        self.forgetBtn_block();
    }
    
}
@end
