//
//  ACMediaImageCell.m
//
//  Created by caoyq on 16/12/2.
//  Copyright © 2016年 SnSoft. All rights reserved.
//

#import "ACMediaImageCell.h"
#import "ACMediaFrameConst.h"

@interface ACMediaImageCell ()

@end

@implementation ACMediaImageCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self _setupViews];
    }
    return self;
}

- (void)_setupViews {
    
    _icon = [UIButton buttonWithType:UIButtonTypeCustom];

//    _icon.backgroundColor =REDCOLOR;

//    [_icon setBackgroundImage:[UIImage imageNamed:@"ACMediaFrame.bundle/deleteButton"] forState:UIControlStateNormal];
//    [_icon addTarget:self action:@selector(clickDeleteButton) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:_icon];

    _deleteButton = [[UIButton alloc] init];
    [_deleteButton setBackgroundImage:[UIImage imageNamed:@"cancel"] forState:UIControlStateNormal];
    [_deleteButton addTarget:self action:@selector(clickDeleteButton) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:_deleteButton];
    
    _videoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ACMediaFrame.bundle/ShowVideo"]];
    [self.contentView addSubview:_videoImageView];
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _icon.frame = CGRectMake(ACMediaDeleteButtonWidth/2, ACMediaDeleteButtonWidth/2, self.bounds.size.width - ACMediaDeleteButtonWidth, self.bounds.size.width - ACMediaDeleteButtonWidth);
    _deleteButton.frame = CGRectMake(self.bounds.size.width - ACMediaDeleteButtonWidth, 0, ACMediaDeleteButtonWidth, ACMediaDeleteButtonWidth);
    _videoImageView.frame = CGRectMake(self.bounds.size.width/4, self.bounds.size.width/4, self.bounds.size.width/2, self.bounds.size.width/2);
}

- (void)clickDeleteButton {
    !_ACMediaClickDeleteButton ?  : _ACMediaClickDeleteButton();
}

@end
