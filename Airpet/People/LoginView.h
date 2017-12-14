//
//  LoginView.h
//  Airpet
//
//  Created by 董伟 on 2017/12/13.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^loginBtnClickBlock)(void);
typedef void(^registerBtnClickBlock)(void);
typedef void(^forgetBtnClickBlock)(void);

@interface LoginView : UIView <UITextFieldDelegate>
@property(nonatomic,strong) UITextField * loginTextField;
@property(nonatomic,strong) UITextField * passWordTextField;
@property(nonatomic,strong) UIButton * loginButton;
@property(nonatomic,strong) UIButton * registerButton;
@property(nonatomic,strong) UIButton * forgetpasswordButton;
@property(nonatomic,copy) loginBtnClickBlock loginBtn_block;
@property(nonatomic,copy) registerBtnClickBlock registerBtn_block;
@property(nonatomic,copy) forgetBtnClickBlock forgetBtn_block;

@end
