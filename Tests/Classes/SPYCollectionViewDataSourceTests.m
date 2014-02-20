//
//  SPYCollectionViewDataSourceTests.m
//  SPYCollectionViewDataSourceTests
//
//  Created by Scott Petit on 2/19/14.
//  Copyright (c) 2014 Scott Petit. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SPYCollectionViewDataSource.h"
#import <OCMock/OCMock.h>

@interface SPYCollectionViewDataSourceTests : XCTestCase

@property (nonatomic, strong) id mockItems;

@property (nonatomic, strong) SPYCollectionViewDataSource *dataSource;

@end

static NSString * const kCellIdentifier = @"cellIdentifier";

@implementation SPYCollectionViewDataSourceTests

- (void)setUp
{
    [super setUp];
    
    self.mockItems = [OCMockObject niceMockForClass:[NSArray class]];
    
    self.dataSource = [SPYCollectionViewDataSource dataSourceWithItems:self.mockItems cellIdentifier:kCellIdentifier];
}

- (void)tearDown
{
    self.dataSource = nil;
    
    [super tearDown];
}

- (void)testThatItemsCanBeSetOnInit
{
    XCTAssertNotNil(self.dataSource.items, @"");
}

- (void)testThatItemsIsProperlySetOnInit
{
    XCTAssertEqualObjects(self.mockItems, self.dataSource.items, @"");
}

- (void)testThatCellIdentiferCanBeSetOnInit
{
    XCTAssertNotNil(self.dataSource.cellIdentifier, @"");
}

- (void)testThatCellIdentifierIsProperlySetOnInit
{
    XCTAssertEqualObjects(kCellIdentifier, self.dataSource.cellIdentifier, @"");
}

- (void)testThatDataSourceThrowsIfGivenNilIdentifier
{
    XCTAssertThrows([SPYCollectionViewDataSource dataSourceWithItems:self.mockItems cellIdentifier:nil], @"");
}

#pragma mark - UICollectionViewDataSource

- (void)testThatDataSourceReturnsCorrectNumberOfItems
{
    NSArray *items = @[@"zero", @"one", @"two"];
    self.dataSource.items = items;
    
    id mockCollectionView = [OCMockObject mockForClass:[UICollectionView class]];
    
    XCTAssertEqual([self.dataSource collectionView:mockCollectionView numberOfItemsInSection:0], [items count], @"");
}

@end
