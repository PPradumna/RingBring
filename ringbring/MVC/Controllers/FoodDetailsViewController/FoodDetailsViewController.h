//
//  FoodDetailsViewController.h
//  ringbring
//
//  Created by mukund pilankar on 07/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodDetailsTableViewCell.h"
#import "CCMPopupSegue.h"
#import "CCMPopupTransitioning.h"

@interface FoodDetailsViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UIToolbarDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UILabel *restaurantNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *showTimeLabel;
@property (weak, nonatomic) IBOutlet UIButton *reviewsButton;
@property (weak, nonatomic) IBOutlet UIButton *offerButton;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UILabel *showSelectedItemLabel;
@property (weak, nonatomic) IBOutlet UIButton *ViewCartButton;
@property (weak, nonatomic) IBOutlet UILabel *collectionViewItemText;
@property (weak, nonatomic) IBOutlet UIToolbar *ItemToolBar;
@property (weak, nonatomic) IBOutlet UIView *targetView;

@end
