//
//  MRInfoRouterTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRInfoRouter.h"

@interface MRInfoRouterTests : XCTestCase

@property (nonatomic, strong) MRInfoRouter *router;

@end

@implementation MRInfoRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[MRInfoRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
