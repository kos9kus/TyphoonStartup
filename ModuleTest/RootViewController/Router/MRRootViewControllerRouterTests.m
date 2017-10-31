//
//  MRRootViewControllerRouterTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRRootViewControllerRouter.h"

@interface MRRootViewControllerRouterTests : XCTestCase

@property (nonatomic, strong) MRRootViewControllerRouter *router;

@end

@implementation MRRootViewControllerRouterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.router = [[MRRootViewControllerRouter alloc] init];
}

- (void)tearDown {
    self.router = nil;

    [super tearDown];
}

@end
