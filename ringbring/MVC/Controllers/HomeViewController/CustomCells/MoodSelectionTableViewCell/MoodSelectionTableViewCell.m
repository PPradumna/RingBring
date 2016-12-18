//
//  MoodSelectionTableViewCell.m
//  ringbring
//
//  Created by mukund pilankar on 04/10/16.
//  Copyright © 2016 mukund pilankar. All rights reserved.
//

#import "MoodSelectionTableViewCell.h"
#import "MoodSelectionCollectionViewCell.h"


@implementation MoodSelectionTableViewCell

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
    return 10;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    CGSize size = CGSizeMake(collectionView.frame.size.width/2, collectionView.frame.size.height/2);
     CGSize size = CGSizeMake(135, 106);
    return size;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UINib *cellNib = [UINib nibWithNibName:@"MoodSelectionCollectionViewCell" bundle:nil];
    [self.moodCollectionView registerNib:cellNib forCellWithReuseIdentifier:@"MoodSelectionCollectionViewCell"];
    
    static NSString *cellIdentifier = @"MoodSelectionCollectionViewCell";
    
    MoodSelectionCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
    
}

@end
