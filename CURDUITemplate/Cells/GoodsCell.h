//
//  GoodsCell.h
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/22.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GoodsCell;
@protocol GoodsCellDelegate <NSObject>

- (void)goodsCellAddButtonDidTaped:(GoodsCell *)goodsCell;
- (void)goodsCellDeleteButtonDidTaped:(GoodsCell *)goodsCell;

@end

@interface GoodsCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentNumberLabel;

@property (nonatomic, weak) id<GoodsCellDelegate> delegate;

@end
