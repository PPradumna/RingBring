//
//  AppDelegate.m
//  ringbring
//
//  Created by mukund pilankar on 04/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "AppDelegate.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[FBSDKApplicationDelegate sharedInstance] application:application
                             didFinishLaunchingWithOptions:launchOptions];
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.tabBarController = [mainStoryboard instantiateViewControllerWithIdentifier:@"TabViewController"];
    self.window.rootViewController = self.tabBarController;
    UITabBar *tabBar = self.tabBarController.tabBar;
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    tabBarItem1.selectedImage = [[UIImage imageNamed:@"home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem1.image = [[UIImage imageNamed:@"home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem2.selectedImage = [[UIImage imageNamed:@"cart"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem2.image = [[UIImage imageNamed:@"cart"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem3.selectedImage = [[UIImage imageNamed:@"myaccount"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem3.image = [[UIImage imageNamed:@"myaccount"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    tabBarItem1.title = @"cart12";
    
//        UIImage *buttonImage = [UIImage imageNamed:@"cart"];
//        UIImage *highlightImage = [UIImage imageNamed:@"cart"];
//        UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
//        button.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height);
//        [button setBackgroundImage:buttonImage forState:UIControlStateNormal];
//        [button setBackgroundImage:highlightImage forState:UIControlStateHighlighted];
//        CGFloat heightDifference = buttonImage.size.height - self.tabBar.frame.size.height;
//        if (heightDifference < 0)
//            button.center = self.tabBar.center;
//        else
//        {
//            CGPoint center = self.tabBar.center;
//            center.y = center.y - heightDifference/2.0;
//            button.center = center;
//        }
//        [self.view addSubview:button];
//    
    return YES;
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    [FBSDKAppEvents activateApp];
}
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                                          openURL:url
                                                sourceApplication:sourceApplication
                                                       annotation:annotation];
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
