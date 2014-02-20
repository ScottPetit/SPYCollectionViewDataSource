//
//  SPYConfigurableCell.h
//  SPYCollectionViewDataSource
//
//  Created by Scott Petit on 2/20/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SPYConfigurableCell <NSObject>

- (void)configureWithItem:(id)item;

@end
