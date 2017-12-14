//
//  RegisterView.h
//  Airpet
//
//  Created by 董伟 on 2017/12/14.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  void (^registerButtonClickBlock)(void);

@interface RegisterView : UIView <UITextFieldDelegate>
@property(nonatomic,strong) UITextField * phoneNum;
@property(nonatomic,strong) UITextField * password;
@property(nonatomic,strong) UIButton * registerButton;
@property(nonatomic,strong) registerButtonClickBlock registerBtn_block;

@end
