//
//  PeopleHeaderView.m
//  Airpet
//
//  Created by 董伟 on 2017/12/7.
//  Copyright © 2017年 董伟. All rights reserved.
//

#import "PeopleHeaderView.h"

@implementation PeopleHeaderView

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
        UIButton  * btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
        btn.backgroundColor = [UIColor redColor];
        [self addSubview:btn];
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

@end
