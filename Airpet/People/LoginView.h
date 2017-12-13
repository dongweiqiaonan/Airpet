//
//  LoginView.h
//  Airpet
//
//  Created by 董伟 on 2017/12/13.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView <UITextFieldDelegate>
@property(nonatomic,strong) UITextField * loginTextField;
@property(nonatomic,strong) UITextField * passWordTextField;

@end
