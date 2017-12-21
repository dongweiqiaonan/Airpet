//
//  LoginViewController.m
//  Airpet
//
//  Created by 董伟 on 2017/12/13.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginView.h"
#import "RegisterViewController.h"
#import "ForgetpasswordViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"登录";
    [self creatHeaderView];
    [self initLeftNavigationItem];
    // Do any additional setup after loading the view.
}

-(void)initLeftNavigationItem{
    UIButton *LButton =[UIButton buttonWithType:UIButtonTypeCustom];
    LButton.frame = CGRectMake(0, 0, 40, 30);
    LButton.imageEdgeInsets= UIEdgeInsetsMake(0, 20, 0, 0);
    [LButton setTitle:@"返回" forState:UIControlStateNormal];
    [LButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    LButton.titleLabel.font = [UIFont systemFontOfSize:18];
    [LButton addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftButton=[[UIBarButtonItem alloc]initWithCustomView:LButton];
    self.navigationItem.leftBarButtonItem = leftButton;
}

-(void)backClick{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)creatHeaderView {
    LoginView * loginview = [[LoginView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    [self.view addSubview:loginview];
    __weak LoginViewController * weakSelf = self;
    
    loginview.registerBtn_block = ^{
        [weakSelf creatRegiserViewController];
    };
    
    loginview.forgetBtn_block = ^{
        [weakSelf creatForgetpasswordViewController];
    };
    
    loginview.loginBtn_block = ^{
        
        
    };
    
}

-(void)creatRegiserViewController {
    RegisterViewController * registerVC = [[RegisterViewController alloc] init];
    [self.navigationController pushViewController:registerVC animated:YES];
    
}

-(void)creatForgetpasswordViewController {
    ForgetpasswordViewController * forgerpasswordVC = [[ForgetpasswordViewController alloc] init];
    [self.navigationController pushViewController:forgerpasswordVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
