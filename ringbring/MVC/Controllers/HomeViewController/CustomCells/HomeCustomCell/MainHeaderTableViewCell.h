//
//  MainHeaderTableViewCell.h
//  ringbring
//
//  Created by mukund pilankar on 04/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainHeaderTableViewCell : UITableViewCell<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end