//
//  SQCustomButton.h
//  SQCustomButton
//
//  Created by yangsq on 2017/9/12.
//  Copyright © 2017年 yangsq. All rights reserved.
//


//通过自定义view的方式，将view作为button使用




#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,YJCustomButtonType) {
    YJCustomButtonLeftImageType,//左图标，右文字
    YJCustomButtonTopImageType,//上图标，下文字
    YJCustomButtonRightImageType//右图标，左文字
};



@interface YJCustomButton : UIView


@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, assign) BOOL isShowSelectBackgroudColor;//是否展示点击效果

@property (nonatomic, copy)void(^touchBlock)(YJCustomButton *button);



/* 
 初始化
 imageSize  图标大小
 isAutoWidth 是否根据文字长度自适应
 */
- (id)initWithFrame:(CGRect)frame
               type:(YJCustomButtonType)type
          imageSize:(CGSize)imageSize
          midmargin:(CGFloat)midmargin;

//点击响应
- (void)touchAction:(void(^)(YJCustomButton *button))block;


NS_ASSUME_NONNULL_END

@end
