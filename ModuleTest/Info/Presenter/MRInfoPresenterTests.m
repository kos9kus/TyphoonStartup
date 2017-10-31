//
//  MRInfoPresenterTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRInfoPresenter.h"

#import "MRInfoViewInput.h"
#import "MRInfoInteractorInput.h"
#import "MRInfoRouterInput.h"

@interface MRInfoPresenterTests : XCTestCase

@property (nonatomic, strong) MRInfoPresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation MRInfoPresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[MRInfoPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(MRInfoInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(MRInfoRouterInput));
    self.mockView = OCMProtocolMock(@protocol(MRInfoViewInput));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;
    self.mockInteractor = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MRInfoModuleInput

#pragma mark - Тестирование методов MRInfoViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

#pragma mark - Тестирование методов MRInfoInteractorOutput

@end
