//
//  UIAlertController+Remind.h
//  CURDUITemplate
//
//  Created by 张鹏 on 2017/11/24.
//  Copyright © 2017年 DancewithPeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (Remind)

+ (void)remindMessage:(NSString *)msg inViewController:(UIViewController *)vc;

@end
