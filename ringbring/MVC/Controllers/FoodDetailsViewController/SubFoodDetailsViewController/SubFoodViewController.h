//
//  SubFoodViewController.h
//  ringbring
//
//  Created by APPLE on 10/25/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubFoodViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
