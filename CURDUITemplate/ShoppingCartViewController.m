//
//  ShoppingCartViewController.m
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/22.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import "ShoppingCartViewController.h"
#import "GoodsCell.h"

@interface ShoppingCartViewController () <GoodsCellDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *addBBI;

@end

@implementation ShoppingCartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Event Handlers

- (IBAction)handlerAddBBIClicked:(id)sender {
    
}

- (void)goodsCellAddButtonDidTaped:(GoodsCell *)goodsCell {
    
}

- (void)goodsCellDeleteButtonDidTaped:(GoodsCell *)goodsCell {
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GoodsCell" forIndexPath:indexPath];
    return cell;
}

@end
