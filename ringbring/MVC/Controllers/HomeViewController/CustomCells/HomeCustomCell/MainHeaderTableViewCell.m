//
//  MainHeaderTableViewCell.m
//  ringbring
//
//  Created by mukund pilankar on 04/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "MainHeaderTableViewCell.h"
#import "HomeHeaderCollectionViewCell.h"

@implementation MainHeaderTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

#pragma mark
#pragma mark CollectionView Delegate and Datasource
 -(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
 return 2;
 }
 
 -(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
 {
     CGSize size = CGSizeMake(collectionView.frame.size.width, collectionView.frame.size.height);
     return size;
 }
 -(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  
 UINib *cellNib = [UINib nibWithNibName:@"HomeHeaderCollectionViewCell" bundle:nil];
 [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"HomeHeaderCollectionViewCell"];
 
 static NSString *cellIdentifier = @"HomeHeaderCollectionViewCell";
 
 HomeHeaderCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
 
 return cell;
 
 }



@end
