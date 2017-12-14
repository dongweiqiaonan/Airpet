//
//  RegisterViewController.m
//  Airpet
//
//  Created by 董伟 on 2017/12/14.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "RegisterViewController.h"


@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"注册";
    [self creatRegisterView];
    
}

-(void)creatRegisterView {
    self.registerview = [[RegisterView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    [self.view addSubview:self.registerview];
    __weak RegisterViewController * weakSelf = self;
    self.registerview.registerBtn_block = ^{
        [weakSelf initNetWork];
    };
    
}

-(void)initNetWork {
    NSLog(@"%@",self.registerview.phoneNum.text);
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
