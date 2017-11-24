//
//  UIAlertController+Remind.m
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/24.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import "UIAlertController+Remind.h"

@implementation UIAlertController (Remind)

+ (void)remindMessage:(NSString *)msg inViewController:(UIViewController *)vc {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:msg preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"完成" style:UIAlertActionStyleDefault handler:nil]];
    [vc presentViewController:alertController animated:YES completion:nil];
}

@end
