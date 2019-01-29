//
//  SQCustomButton.m
//  SQCustomButton
//
//  Created by yangsq on 2017/9/12.
//  Copyright © 2017年 yangsq. All rights reserved.
//

#import "YJCustomButton.h"
#import "Masonry.h"
#define margin 3
@interface YJCustomButton ()

@property (nonatomic, strong) UIView *backgroudView;

@end

@implementation YJCustomButton

- (id)initWithFrame:(CGRect)frame type:(YJCustomButtonType)type imageSize:(CGSize)imageSize midmargin:(CGFloat)midmargin{
    if (self = [super initWithFrame:frame]) {
        UIView *tempView = [UIView new];
        [self addSubview:tempView];
        tempView.translatesAutoresizingMaskIntoConstraints = NO;
        [tempView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_top);
            make.left.equalTo(self.mas_left);
            make.right.equalTo(self.mas_right);
            make.bottom.equalTo(self.mas_bottom);
        }];
        
        _imageView = [UIImageView new];
        [tempView addSubview:_imageView];
        _imageView.translatesAutoresizingMaskIntoConstraints = NO;
        
        
        
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.numberOfLines = 1;
        [tempView addSubview:_titleLabel];
        _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        
        
        _backgroudView = [UIView new];
        _backgroudView.backgroundColor = [[UIColor lightGrayColor]colorWithAlphaComponent:0.3];
        _backgroudView.translatesAutoresizingMaskIntoConstraints = NO;
        _backgroudView.hidden = YES;
        [self addSubview:_backgroudView];
       
        
        
        if (type == YJCustomButtonLeftImageType) {
           
            [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.mas_equalTo(tempView.centerY);
                make.centerX.equalTo(tempView.mas_centerX).offset((imageSize.width + midmargin)*0.5);
                make.right.mas_lessThanOrEqualTo(tempView.mas_right).offset(-margin);
            }];
            __weak typeof(self)weakSelf = self;
            [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.mas_equalTo(tempView.centerY);
                make.width.offset(imageSize.width);
                make.height.offset(imageSize.height);
                make.right.equalTo(weakSelf.mas_left).offset(-midmargin);
                make.left.mas_greaterThanOrEqualTo(tempView.mas_left).offset(margin);
            }];
            
        }
        
        if (type == YJCustomButtonTopImageType) {
            //还需要考虑是否超出的情况
            _titleLabel.textAlignment = NSTextAlignmentCenter;
            
            [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.mas_equalTo(tempView.centerX);
                make.right.mas_lessThanOrEqualTo(tempView.mas_right).offset(-margin);
                make.left.mas_greaterThanOrEqualTo(tempView.mas_left).offset(margin);
                make.centerY.equalTo(tempView.mas_centerY).offset((imageSize.width + midmargin)*0.5);
            }];
            
            [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.mas_equalTo(tempView.centerX);
                make.width.offset(imageSize.width);
                make.height.offset(imageSize.height);
                make.centerY.equalTo(tempView.mas_centerY).offset(-(imageSize.width + midmargin)*0.5);
            }];
            
        }
        if (type == YJCustomButtonRightImageType) {
            
            [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.mas_equalTo(tempView.centerY);
                make.centerX.equalTo(tempView.mas_centerX).offset(-(imageSize.width + midmargin)*0.5);
                make.left.mas_greaterThanOrEqualTo(tempView.mas_left).offset(margin);
            }];
            __weak typeof(self)weakSelf = self;
            [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerY.mas_equalTo(tempView.centerY);
                make.width.offset(imageSize.width);
                make.height.offset(imageSize.height);
                make.right.mas_lessThanOrEqualTo(tempView.mas_right).offset(-margin);
                make.left.equalTo(weakSelf.mas_right).offset(midmargin);
            }];
        }
    }
    return self;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.touchBlock) {
        self.touchBlock(self);
    }
    if (self.isShowSelectBackgroudColor) {
        self.backgroudView.hidden = NO;
    }
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.isShowSelectBackgroudColor) {
        self.backgroudView.hidden = YES;
    }
}


- (void)touchAction:(void (^)(YJCustomButton * _Nonnull))block{
    self.touchBlock = block;
}


@end
