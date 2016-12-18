//
//  HomeViewController.m
//  ringbring
//
//  Created by mukund pilankar on 04/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "HomeViewController.h"
#import "MainHeaderTableViewCell.h"
#import "MoodSelectionTableViewCell.h"
#import "FoodTableViewCell.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>
@implementation HomeViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.mainTableView registerNib:[UINib nibWithNibName:@"MainHeaderTableViewCell" bundle:nil] forCellReuseIdentifier:@"MainHeaderTableViewCell"];
    [self.mainTableView registerNib:[UINib nibWithNibName:@"MoodSelectionTableViewCell" bundle:nil] forCellReuseIdentifier:@"MoodSelectionTableViewCell"];
    [self.mainTableView registerNib:[UINib nibWithNibName:@"FoodTableViewCell" bundle:nil] forCellReuseIdentifier:@"FoodTableViewCell"];
    self.mainTableView.separatorStyle = UITableViewCellSelectionStyleNone;
    self.mainTableView.estimatedRowHeight = 163;
    self.mainTableView.rowHeight = UITableViewAutomaticDimension;
    [self.searchTextField setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
  }

-(void)viewWillAppear:(BOOL)animated{
  
    [self.navigationController setNavigationBarHidden:NO];
    
}
#pragma mark
#pragma mark tableviewcell delegate and datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row == 0) {
    
    static NSString *cellId = nil;
    cellId = @"MainHeaderTableViewCell";
    MainHeaderTableViewCell  *mainViewCell = [tableView dequeueReusableCellWithIdentifier:cellId];
    mainViewCell.selectionStyle = UITableViewCellSelectionStyleNone;
    if(!mainViewCell)
    {
        mainViewCell  = (MainHeaderTableViewCell *)[[[NSBundle mainBundle]loadNibNamed:@"MainHeaderTableViewCell" owner:self options:nil]objectAtIndex:0];
    }
    mainViewCell.collectionView.delegate = mainViewCell;
    mainViewCell.collectionView.dataSource = mainViewCell;
    
    return mainViewCell;
    }
    if (indexPath.row == 1){
     
        static NSString *cellId = @"MoodSelectionTableViewCell";
        MoodSelectionTableViewCell  *moodViewCell = [tableView dequeueReusableCellWithIdentifier:cellId];
        moodViewCell.selectionStyle = UITableViewCellSelectionStyleNone;
        if(!moodViewCell)
        {
            moodViewCell  = (MoodSelectionTableViewCell *)[[[NSBundle mainBundle]loadNibNamed:@"MoodSelectionTableViewCell" owner:self options:nil]objectAtIndex:0];
        }
        moodViewCell.moodCollectionView.delegate = moodViewCell;
        moodViewCell.moodCollectionView.dataSource = moodViewCell;
        
        return moodViewCell;
        
    }
    else {
    static NSString *cellId = @"FoodTableViewCell";
    FoodTableViewCell  *foodViewCell = [tableView dequeueReusableCellWithIdentifier:cellId];
    foodViewCell.selectionStyle = UITableViewCellSelectionStyleNone;
    if(!foodViewCell)
    {
        foodViewCell  = (FoodTableViewCell *)[[[NSBundle mainBundle]loadNibNamed:@"FoodTableViewCell" owner:self options:nil]objectAtIndex:0];
    }
   
    return foodViewCell;
    }
    return nil;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPat{
 
    FoodDetailsViewController *foodView = [self.storyboard instantiateViewControllerWithIdentifier:@"FoodDetailsViewController"];
    foodView.hidesBottomBarWhenPushed = YES;
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [self.navigationController pushViewController:foodView animated:nil];
}

#pragma mark
#pragma mark PUSH VIEW METHOD
//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    
//    if ([segue.identifier isEqual:@"foodDetailsIdentifier"]) {
//        FoodDetailsViewController *foodView = [segue destinationViewController];
//        foodView.hidesBottomBarWhenPushed = YES;
//    }
//    
//}
@end
