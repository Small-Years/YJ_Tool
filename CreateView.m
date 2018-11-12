//
//  CreateView.m
//  GetMoney
//
//  Created by yangjian on 2018/11/12.
//  Copyright © 2018 zhangshuyue. All rights reserved.
//

#import "CreateView.h"

@implementation CreateView

+(UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor font:(CGFloat)font backgroundColor:(UIColor *)bgColor cornerRadius:(CGFloat)radius{
    
    UIButton *btn = [[UIButton alloc]initWithFrame:frame];
    btn.backgroundColor = bgColor;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:font];
    btn.layer.cornerRadius = radius;
    return btn;
}

+(UILable *)createLableWithFrame:(CGRect)frame{
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectZero];
    lable.text = @"";
    return lable;
}
@end
