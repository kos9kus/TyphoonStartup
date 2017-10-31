//
//  MRRootViewControllerPresenter.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerViewOutput.h"
#import "MRRootViewControllerInteractorOutput.h"
#import "MRRootViewControllerModuleInput.h"

@protocol MRRootViewControllerViewInput;
@protocol MRRootViewControllerInteractorInput;
@protocol MRRootViewControllerRouterInput;

@interface MRRootViewControllerPresenter : NSObject <MRRootViewControllerModuleInput, MRRootViewControllerViewOutput, MRRootViewControllerInteractorOutput>

@property (nonatomic, weak) id<MRRootViewControllerViewInput> view;
@property (nonatomic, strong) id<MRRootViewControllerInteractorInput> interactor;
@property (nonatomic, strong) id<MRRootViewControllerRouterInput> router;

@end
