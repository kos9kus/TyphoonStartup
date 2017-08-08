//
//  MRMapsInteractorTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRMapsInteractor.h"

#import "MRMapsInteractorOutput.h"

@interface MRMapsInteractorTests : XCTestCase

@property (nonatomic, strong) MRMapsInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MRMapsInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[MRMapsInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MRMapsInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MRMapsInteractorInput

@end
