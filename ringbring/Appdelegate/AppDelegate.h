//
//  AppDelegate.h
//  ringbring
//
//  Created by mukund pilankar on 04/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabViewController.h"
#import "HomeViewController.h"
#import "MyCartViewController.h"
#import "MyAccountViewController.h"
#import "NavigationViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate,UITabBarDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) TabViewController *tabBarController;
@property (strong, nonatomic) HomeViewController *homeViewController;
@property (strong, nonatomic) MyCartViewController *myCartViewController;
@property (strong, nonatomic) MyAccountViewController *myAccountController;
@property (strong, nonatomic) NavigationViewController *navigationController;

@end
