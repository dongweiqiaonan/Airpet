//
//  PeopleViewController.m
//  Airpet
//
//  Created by 董伟 on 2017/12/7.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "PeopleViewController.h"
#import "PeopleHeaderView.h"
#import "LoginViewController.h"
#import "AppDelegate.h"


@interface PeopleViewController ()

@end

@implementation PeopleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"个人中心";
    [self addPeopleHeaderView];
    
}
-(void)addPeopleHeaderView
{
    PeopleHeaderView * peopleHeaderView = [[PeopleHeaderView alloc ]initWithFrame:CGRectMake(0, NavHeight, ScreenWidth, 0.3*ScreenHeight)];
    [self.view addSubview:peopleHeaderView];
    __weak PeopleViewController * weakSelf = self;
    peopleHeaderView.login_block = ^{
        [weakSelf creatLoginViewController];
    };
}

-(void)creatLoginViewController{
    LoginViewController * loginVC = [[LoginViewController alloc]init];
    loginVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:loginVC animated:YES];
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
