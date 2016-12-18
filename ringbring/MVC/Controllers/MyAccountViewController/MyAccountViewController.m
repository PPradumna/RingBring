//
//  MyAccountViewController.m
//  ringbring
//
//  Created by mukund pilankar on 06/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "MyAccountViewController.h"
#import "MyProfileViewController.h"
#import "MyOrderViewController.h"
#import "YourAddressViewController.h"
#import "DiscountOfferViewController.h"
#import "AboutUsViewController.h"
#import "HelpSupportViewController.h"

@interface MyAccountViewController ()

@end

@implementation MyAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.cartTableView.separatorStyle = UITableViewCellSelectionStyleNone;
    self.tableNameArray = [[NSArray alloc]initWithObjects:@"My Profile",@"My Orders",@"Your Address",@"Discount & Offers",@"About Us",@"Help & Support", nil];
  self.tableImagesArray = [[NSArray alloc]initWithObjects:@"myprofile",@"myorder",@"your_address",@"offer",@"about_us",@"help_support", nil];
    
}
#pragma mark
#pragma mark tableviewcell delegate and datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cell";
    UITableViewCell  *Cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    Cell.selectionStyle = UITableViewCellSelectionStyleNone;
    self.tableImages = (UIImageView *)[Cell viewWithTag:1];
    self.tableNames = (UILabel *)[Cell viewWithTag:2];
    self.separatorView = (UIView *)[Cell viewWithTag:3];
    if (indexPath.row == 5) {
        self.separatorView.hidden = YES;
    }
    self.tableImages.image = [UIImage imageNamed:[self.tableImagesArray objectAtIndex:indexPath.row]];
    self.tableNames.text = [self.tableNameArray objectAtIndex:indexPath.row];
    return Cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"myprofile" sender:nil];
            break;
        case 1:
            [self performSegueWithIdentifier:@"myorder" sender:nil];
            break;
        case 2:
            [self performSegueWithIdentifier:@"youraddress" sender:nil];
            break;
        case 3:
            [self performSegueWithIdentifier:@"discountoffer" sender:nil];
            break;
        case 4:
            [self performSegueWithIdentifier:@"aboutus" sender:nil];
            break;
        case 5:
            [self performSegueWithIdentifier:@"helpsupport" sender:nil];
            break;
        default:
            break;
    }
    
}
#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"myprofile"]) {
        
        MyProfileViewController *myProfileView = [segue destinationViewController];
        myProfileView.hidesBottomBarWhenPushed = YES;
    }
    else if([segue.identifier isEqualToString:@"myorder"]){
        
        MyOrderViewController  *myOrderView = [segue destinationViewController];
        myOrderView.hidesBottomBarWhenPushed = YES;
    }
    else if([segue.identifier isEqualToString:@"youraddress"]){
        
        YourAddressViewController *yourAddressView = [segue destinationViewController];
        yourAddressView.hidesBottomBarWhenPushed = YES;
        
    }
    else if([segue.identifier isEqualToString:@"discountoffer"]){
        
        DiscountOfferViewController *discountView = [segue destinationViewController];
        discountView.hidesBottomBarWhenPushed = YES;
        
    }
    else if([segue.identifier isEqualToString:@"aboutus"]){
        
        AboutUsViewController *aboutUsView = [segue destinationViewController];
        aboutUsView.hidesBottomBarWhenPushed = YES;
        
    }
    else if([segue.identifier isEqualToString:@"helpsupport"]){
        
        HelpSupportViewController *helpSupportView = [segue destinationViewController];
        helpSupportView.hidesBottomBarWhenPushed = YES;
        
    }
}


@end
