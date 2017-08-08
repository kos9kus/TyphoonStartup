//
//  MRMapsPresenterTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRMapsPresenter.h"

#import "MRMapsViewInput.h"
#import "MRMapsInteractorInput.h"
#import "MRMapsRouterInput.h"

@interface MRMapsPresenterTests : XCTestCase

@property (nonatomic, strong) MRMapsPresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation MRMapsPresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[MRMapsPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(MRMapsInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(MRMapsRouterInput));
    self.mockView = OCMProtocolMock(@protocol(MRMapsViewInput));

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

#pragma mark - Тестирование методов MRMapsModuleInput

#pragma mark - Тестирование методов MRMapsViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

#pragma mark - Тестирование методов MRMapsInteractorOutput

@end
