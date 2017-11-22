//
//  CommentListViewController.m
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/22.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import "CommentListViewController.h"
#import "CommentCell.h"

@interface CommentListViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *addBBI;

@end

@implementation CommentListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Event Handlers

- (IBAction)handlerAddBBIClicked:(id)sender {
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CommentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CommentCell" forIndexPath:indexPath];
    cell.titleLabel.text = @"哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈 哈哈哈哈";
    cell.dateLabel.text = @"2017-11-22";
    return cell;
}

@end
