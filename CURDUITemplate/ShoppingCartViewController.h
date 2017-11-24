//
//  ShoppingCartViewController.h
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/22.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GoodsCell.h"

@interface ShoppingCartViewController : UITableViewController

- (void)setupCell:(GoodsCell *)cell withData:(id)data;

@end
