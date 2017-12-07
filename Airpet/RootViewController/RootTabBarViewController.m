//
//  RootTabBarViewController.m
//  Airpet
//
//  Created by 董伟 on 2017/12/7.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "RootTabBarViewController.h"

@interface RootTabBarViewController ()<UITabBarControllerDelegate>

@end

@implementation RootTabBarViewController

+(RootTabBarViewController *) rootViewController {
    RootTabBarViewController * rootViewController = [[RootTabBarViewController alloc] init];
    
    PeopleViewController * peopleViewController = [[PeopleViewController alloc] init];
    peopleViewController.view.backgroundColor = [UIColor yellowColor];
    peopleViewController.tabBarItem.title = @"个人";
    peopleViewController.tabBarItem.image = [UIImage imageNamed:@"people_tab_picture.png"];
    UINavigationController * navPeopleViewController = [[UINavigationController alloc] initWithRootViewController:peopleViewController];
    
    TopicViewController * topicViewController = [[TopicViewController alloc] init];
    topicViewController.view.backgroundColor = [UIColor redColor];
    topicViewController.tabBarItem.title = @"话题";
    topicViewController.tabBarItem.image = [UIImage imageNamed:@"topic_tab_picture.png"];
    
    StoreViewController * storeViewController = [[StoreViewController alloc] init];
    storeViewController.view.backgroundColor = [UIColor whiteColor];
    storeViewController.tabBarItem.title = @"商店";
    storeViewController.tabBarItem.image = [UIImage imageNamed:@"store_tab_picture.png"];
    
    OtherViewController * otherViewController = [[OtherViewController alloc] init];
    otherViewController.view.backgroundColor = [UIColor greenColor];
    otherViewController.tabBarItem.title = @"其他";
    otherViewController.tabBarItem.image = [UIImage imageNamed:@"other_tab_picture.png"];
    
    rootViewController.viewControllers = @[storeViewController,otherViewController,topicViewController,navPeopleViewController];
    
    return rootViewController;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
