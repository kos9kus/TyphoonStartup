//
//  MRInfoAssembly_Testable.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRInfoAssembly.h"

@class MRInfoViewController;
@class MRInfoInteractor;
@class MRInfoPresenter;
@class MRInfoRouter;

/**
 @author Konstantin Kusainov

 Extension, который делает приватные методы фабрики открытыми для тестирования. 
 */
@interface MRInfoAssembly ()

- (MRInfoViewController *)viewInfo;
- (MRInfoPresenter *)presenterInfo;
- (MRInfoInteractor *)interactorInfo;
- (MRInfoRouter *)routerInfo;

@end
