//
//  ShoppingCartViewController.m
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/22.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import "ShoppingCartViewController.h"
#import "GoodsCell.h"
#import "SearchResultViewController.h"


#define Later_iOS(v) ([[[UIDevice currentDevice] systemVersion] floatValue] >= v)


@interface ShoppingCartViewController () <GoodsCellDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *addBBI;
@property (nonatomic, strong) UISearchController *searchController;

@end

@implementation ShoppingCartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (@available(iOS 11.0, *)) {
        self.navigationItem.searchController = self.searchController;
        self.navigationItem.hidesSearchBarWhenScrolling = NO;
    } else {
        [self.searchController.searchBar sizeToFit];
        self.tableView.tableHeaderView = self.searchController.searchBar;
    }
    
    self.definesPresentationContext = YES;
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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GoodsCell" forIndexPath:indexPath];
    return cell;
}


#pragma mark - Getter

- (UISearchController *)searchController {
    if (_searchController == nil) {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        SearchResultViewController *searchResultVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"SearchResultViewController"];
        _searchController = [[UISearchController alloc] initWithSearchResultsController:searchResultVC];
    }
    return _searchController;
}

@end
