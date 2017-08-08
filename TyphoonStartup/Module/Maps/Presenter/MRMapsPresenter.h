//
//  MRMapsPresenter.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import "MRMapsViewOutput.h"
#import "MRMapsInteractorOutput.h"

@protocol MRMapsViewInput;
@protocol MRMapsInteractorInput;
@protocol MRMapsRouterInterface;

@interface MRMapsPresenter : NSObject <MRMapsViewOutput, MRMapsInteractorOutput>

@property (nonatomic, weak) id<MRMapsViewInput> view;
@property (nonatomic, strong) id<MRMapsInteractorInput> interactor;
@property (nonatomic, strong) id<MRMapsRouterInterface> router;

@end
