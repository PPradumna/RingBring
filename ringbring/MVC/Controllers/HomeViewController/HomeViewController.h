//
//  HomeViewController.h
//  ringbring
//
//  Created by mukund pilankar on 04/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyAccountViewController.h"
#import "MyCartViewController.h"
#import "FoodDetailsViewController.h"
@interface HomeViewController : UIViewController<UITabBarDelegate,UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@property (weak, nonatomic) IBOutlet UITabBar *tabBar;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabBarHomeButton;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabBarMyCartButton;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UITabBarItem *tabBarMyAccount;
@end
