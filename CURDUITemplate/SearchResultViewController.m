//
//  SearchResultViewController.m
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/23.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import "SearchResultViewController.h"
#import "GoodsCell.h"

@interface SearchResultViewController ()

@end

@implementation SearchResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GoodsCell" forIndexPath:indexPath];
    
    cell.titleLabel.text = @"结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 结果。。。 ";
    
    return cell;
}

@end
