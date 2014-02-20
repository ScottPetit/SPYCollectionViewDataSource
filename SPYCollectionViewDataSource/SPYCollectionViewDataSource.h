//
//  SPYCollectionViewDataSource.h
//  SPYCollectionViewDataSource
//
//  Created by Scott Petit on 2/19/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SPYConfigurableCell.h"

@interface SPYCollectionViewDataSource : NSObject <UICollectionViewDataSource>

+ (instancetype)dataSourceWithItems:(NSArray *)items cellIdentifier:(NSString *)cellIdentifier;

- (instancetype)initWithItems:(NSArray *)items cellIdentifier:(NSString *)cellIdentifier;

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy, readonly) NSString *cellIdentifier;

@end
