//
//  MyAccountViewController.h
//  ringbring
//
//  Created by mukund pilankar on 06/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyAccountViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *cartTableView;
@property (strong, nonatomic)  UIImageView *tableImages;
@property (strong, nonatomic)  UILabel *tableNames;
@property (strong, nonatomic) NSArray *tableImagesArray;
@property (strong, nonatomic) NSArray *tableNameArray;
@property (strong, nonatomic) UIView *separatorView;

@end
