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
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GoodsCell" forIndexPath:indexPath];
    
    [self.shoppingCartViewController setupCell:cell withData:self.dataSource[indexPath.row]];
    
    return cell;
}

#pragma mark - UITable view Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self.delegate respondsToSelector:@selector(didSelectedGoods:)]) {
        [self.delegate didSelectedGoods:self.dataSource[indexPath.row]];
    }
}


#pragma mark - Setter

- (void)setDataSource:(NSMutableArray *)dataSource {
    if (_dataSource != dataSource)  {
        _dataSource = dataSource;
        
        [self.tableView reloadData];
    }
}


@end
