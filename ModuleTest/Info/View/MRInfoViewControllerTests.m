//
//  MRInfoViewControllerTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRInfoViewController.h"

#import "MRInfoViewOutput.h"

@interface MRInfoViewControllerTests : XCTestCase

@property (nonatomic, strong) MRInfoViewController *controller;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MRInfoViewControllerTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.controller = [[MRInfoViewController alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MRInfoViewOutput));

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

#pragma mark - Тестирование методов MRInfoViewInput

@end
