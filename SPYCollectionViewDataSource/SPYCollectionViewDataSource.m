//
//  SPYCollectionViewDataSource.m
//  SPYCollectionViewDataSource
//
//  Created by Scott Petit on 2/19/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

#import "SPYCollectionViewDataSource.h"

@implementation SPYCollectionViewDataSource

+ (instancetype)dataSourceWithItems:(NSArray *)items cellIdentifier:(NSString *)cellIdentifier
{
    return [[self alloc] initWithItems:items cellIdentifier:cellIdentifier];
}

- (instancetype)initWithItems:(NSArray *)items cellIdentifier:(NSString *)cellIdentifier
{
    NSParameterAssert(cellIdentifier);
    
    if (!cellIdentifier)
    {
        return nil;
    }
    
    self = [super init];
    if (self)
    {
        _items = items;
        _cellIdentifier = [cellIdentifier copy];
    }
    return self;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    id item = self.items[indexPath.item];
    
    if ([cell conformsToProtocol:@protocol(SPYConfigurableCell)])
    {
        id<SPYConfigurableCell>configurableCell = (id<SPYConfigurableCell>)cell;
        
        [configurableCell configureWithItem:item];
    }
    
    return cell;
}

@end
