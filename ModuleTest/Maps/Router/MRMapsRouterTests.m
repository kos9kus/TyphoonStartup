//
//  MRMapsRouterTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRMapsRouter.h"

@interface MRMapsRouterTests : XCTestCase

@property (nonatomic, strong) MRMapsRouter *router;

@end

@implementation MRMapsRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[MRMapsRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
