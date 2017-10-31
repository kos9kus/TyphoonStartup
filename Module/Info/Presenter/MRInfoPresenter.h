//
//  MRInfoPresenter.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRInfoViewOutput.h"
#import "MRInfoInteractorOutput.h"
#import "MRInfoModuleInput.h"

@protocol MRInfoViewInput;
@protocol MRInfoInteractorInput;
@protocol MRInfoRouterInput;

@interface MRInfoPresenter : NSObject <MRInfoModuleInput, MRInfoViewOutput, MRInfoInteractorOutput>

@property (nonatomic, weak) id<MRInfoViewInput> view;
@property (nonatomic, strong) id<MRInfoInteractorInput> interactor;
@property (nonatomic, strong) id<MRInfoRouterInput> router;

@end
