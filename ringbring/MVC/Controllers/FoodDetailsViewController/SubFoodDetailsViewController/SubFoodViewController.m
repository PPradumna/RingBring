//
//  SubFoodViewController.m
//  ringbring
//
//  Created by APPLE on 10/25/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "SubFoodViewController.h"
#import "FoodDetailsTableViewCell.h"
@interface SubFoodViewController ()

@end

@implementation SubFoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"FoodDetailsTableViewCell" bundle:nil] forCellReuseIdentifier:@"FoodDetailsTableViewCell"];
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    self.tableView.estimatedRowHeight = 77;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    // Do any additional setup after loading the view.
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
