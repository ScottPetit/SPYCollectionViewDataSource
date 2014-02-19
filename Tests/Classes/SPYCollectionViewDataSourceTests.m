//
//  SPYCollectionViewDataSourceTests.m
//  SPYCollectionViewDataSourceTests
//
//  Created by Scott Petit on 2/19/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SPYCollectionViewDataSource.h"

@interface SPYCollectionViewDataSourceTests : XCTestCase

@property (nonatomic, strong) SPYCollectionViewDataSource *dataSource;

@end

@implementation SPYCollectionViewDataSourceTests

- (void)setUp
{
    [super setUp];
    
    self.dataSource = [SPYCollectionViewDataSource new];
}

- (void)tearDown
{
    self.dataSource = nil;
    
    [super tearDown];
}

@end
