//
//  GoodsCell.m
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/22.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import "GoodsCell.h"

@interface GoodsCell ()

@property (weak, nonatomic) IBOutlet UILabel *addButton;
@property (weak, nonatomic) IBOutlet UILabel *deleteButton;

@end

@implementation GoodsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.addButton.userInteractionEnabled = YES;
    self.deleteButton.userInteractionEnabled = YES;
    
    [self.addButton addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleAddButtonTaped:)]];
    [self.deleteButton addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDeleteButtonTaped:)]];
}

#pragma mark - Event Handlers

- (void)handleAddButtonTaped:(UITapGestureRecognizer *)tap {
    if ([self.delegate respondsToSelector:@selector(goodsCellAddButtonDidTaped:)]) {
        [self.delegate goodsCellAddButtonDidTaped:self];
    }
}

- (void)handleDeleteButtonTaped:(UITapGestureRecognizer *)tap {
    if ([self.delegate respondsToSelector:@selector(goodsCellDeleteButtonDidTaped:)]) {
        [self.delegate goodsCellDeleteButtonDidTaped:self];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
