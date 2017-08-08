//
//  MRMapsViewControllerTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRMapsViewController.h"

#import "MRMapsViewOutput.h"

@interface MRMapsViewControllerTests : XCTestCase

@property (nonatomic, strong) MRMapsViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MRMapsViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[MRMapsViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MRMapsViewOutput));

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

#pragma mark - Тестирование методов MRMapsViewInput

@end
