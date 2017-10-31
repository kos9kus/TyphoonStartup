//
//  MRRootViewControllerViewControllerTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRRootViewControllerViewController.h"

#import "MRRootViewControllerViewOutput.h"

@interface MRRootViewControllerViewControllerTests : XCTestCase

@property (nonatomic, strong) MRRootViewControllerViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MRRootViewControllerViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[MRRootViewControllerViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MRRootViewControllerViewOutput));

    self.controller.output = self.mockOutput;
}

- (void)tearDown {
    self.controller = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование жизненного цикла

- (void)testThatControllerNotifiesPresenterOnDidLoad {
	// given

	// when
	[self.controller viewDidLoad];

	// then
	OCMVerify([self.mockOutput didTriggerViewReadyEvent]);
}

#pragma mark - Тестирование методов интерфейса

#pragma mark - Тестирование методов MRRootViewControllerViewInput

@end
