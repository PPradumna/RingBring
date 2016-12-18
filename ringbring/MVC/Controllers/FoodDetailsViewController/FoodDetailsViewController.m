//
//  FoodDetailsViewController.m
//  ringbring
//
//  Created by mukund pilankar on 07/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "FoodDetailsViewController.h"
#import <CarbonKit/CarbonKit.h>
@interface FoodDetailsViewController ()<CarbonTabSwipeNavigationDelegate> {
    NSArray *items;
    CarbonTabSwipeNavigation *carbonTabSwipeNavigation;
}


@end

@implementation FoodDetailsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"FoodDetailsTableViewCell" bundle:nil] forCellReuseIdentifier:@"FoodDetailsTableViewCell"];
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    self.tableView.estimatedRowHeight = 77;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    items = @[
              @"Recommanded",
              @"Suop",
              @"Salad",
              ];
    
    carbonTabSwipeNavigation =
    [[CarbonTabSwipeNavigation alloc] initWithItems:items toolBar:self.ItemToolBar delegate:self];
    [carbonTabSwipeNavigation insertIntoRootViewController:self andTargetView:self.targetView];
    [self style];

}

-(void)viewWillAppear:(BOOL)animated{
    
    [self.navigationController setNavigationBarHidden:YES];
    
}
#pragma mark - CarbonTabSwipeNavigation Delegate & Method
- (void)style {
    
    UIColor *color = [UIColor colorWithRed:24.0 / 255 green:75.0 / 255 blue:152.0 / 255 alpha:1];
   // self.navigationController.navigationBar.translucent = NO;
    //self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //self.navigationController.navigationBar.barTintColor = color;
   // self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    
    carbonTabSwipeNavigation.toolbar.translucent = NO;
    [carbonTabSwipeNavigation setIndicatorColor:color];
    [carbonTabSwipeNavigation setTabExtraWidth:30];
    [carbonTabSwipeNavigation.carbonSegmentedControl setWidth:80 forSegmentAtIndex:0];
    [carbonTabSwipeNavigation.carbonSegmentedControl setWidth:80 forSegmentAtIndex:1];
    [carbonTabSwipeNavigation.carbonSegmentedControl setWidth:80 forSegmentAtIndex:2];
    
    // Custimize segmented control
    [carbonTabSwipeNavigation setNormalColor:[color colorWithAlphaComponent:0.6]
                                        font:[UIFont boldSystemFontOfSize:14]];
    [carbonTabSwipeNavigation setSelectedColor:color font:[UIFont boldSystemFontOfSize:14]];
}
- (nonnull UIViewController *)carbonTabSwipeNavigation:
(nonnull CarbonTabSwipeNavigation *)carbontTabSwipeNavigation
                                 viewControllerAtIndex:(NSUInteger)index {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    switch (index) {
        case 0:
            return  [storyboard instantiateViewControllerWithIdentifier:@"SubFoodViewController"];
            
        case 1:
            return [storyboard instantiateViewControllerWithIdentifier:@"SubFoodViewController"];
            
        default:
            return [storyboard instantiateViewControllerWithIdentifier:@"SubFoodViewController"];
    }
}
- (void)carbonTabSwipeNavigation:(nonnull CarbonTabSwipeNavigation *)carbonTabSwipeNavigation
                  didMoveAtIndex:(NSUInteger)index {
    NSLog(@"Did move at index: %ld", index);
}

#pragma mark
#pragma mark collectionView delegate and datasource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return items.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellId = @"Cell";
    UICollectionViewCell  *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    self.collectionViewItemText = (UILabel*)[cell viewWithTag:1];
    self.collectionViewItemText.text = [items objectAtIndex:indexPath.row];
    return cell;
    
}
#pragma mark
#pragma mark tableviewcell delegate and datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        static NSString *cellId = @"FoodDetailsTableViewCell";
        FoodDetailsTableViewCell  *foodViewCell = [tableView dequeueReusableCellWithIdentifier:cellId];
        foodViewCell.selectionStyle = UITableViewCellSelectionStyleNone;
    
        return foodViewCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 77.0;
}
#pragma mark
#pragma mark Button Action
- (IBAction)BackButtonAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)SearchButtonAction:(id)sender {
}
- (IBAction)ReviewsButtonAction:(id)sender {
}
- (IBAction)OfferButtonAction:(id)sender {
}
- (IBAction)ViewCartButton:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
