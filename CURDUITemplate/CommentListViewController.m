//
//  CommentListViewController.m
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/22.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import "CommentListViewController.h"
#import "CommentCell.h"
#import "UIAlertController+Remind.h"

@interface CommentListViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *addBBI;
@property (nonatomic, strong) UIAlertController *alertController;
@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation CommentListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self firstLoadData];
}

#pragma mark - Interface

// 第一次加载数据
- (void)firstLoadData {
    NSLog(@"第一次加载数据");
}

// 添加评论
- (void)addCommentWithData:(id)data {
    NSLog(@"添加评论");
}

// 删除评论
- (void)deleteCommentWithData:(id)data {
    NSLog(@"删除评论");
}

// 配置Cell
- (void)setupCell:(CommentCell *)cell withData:(id)data {
//    cell.titleLabel.text = ...
//    cell.dateLabel.text = ...
}


#pragma mark - Event Handlers

- (IBAction)handlerAddBBIClicked:(id)sender {
    [self presentViewController:self.alertController animated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CommentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CommentCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    id data = self.dataSource[indexPath.row];
    [self setupCell:cell withData:data];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self deleteCommentWithData:self.dataSource[indexPath.row]];
    }
}

#pragma mark - Helper Methods

- (NSString *)validateCommentForText:(NSString *)text {
    
    NSString *trimText = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if (trimText != nil && trimText.length > 0) {
        return trimText;
    }
    
    [UIAlertController remindMessage:@"请输入评论" inViewController:self];
    
    return nil;
}


#pragma mark - Setter & Getter

- (UIAlertController *)alertController {
    if (_alertController == nil) {
        _alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"请输入评论" preferredStyle:UIAlertControllerStyleAlert];
        
        [_alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            textField.placeholder = @"请输入评论";
            textField.tag = 1001;
        }];
        
        __weak UIAlertController *weakAlert = _alertController;
        [_alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            UITextField *commentTF = weakAlert.textFields[0];
            
            commentTF.text = nil;
        }]];
        
        __weak typeof (self) weakSelf = self;
        [_alertController addAction:[UIAlertAction actionWithTitle:@"添加评论" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            UITextField *commentTF = weakAlert.textFields[0];
            
            NSString *comment = [weakSelf validateCommentForText:commentTF.text];
            
            commentTF.text = nil;
            
            if (comment != nil) {
                [weakSelf addCommentWithData:@{@"comment": comment}];
            }
        }]];
    }
    
    return _alertController;
}

@end
