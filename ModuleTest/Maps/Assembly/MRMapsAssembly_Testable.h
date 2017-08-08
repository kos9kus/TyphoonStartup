//
//  MRMapsAssembly_Testable.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import "MRMapsAssembly.h"

@class MRMapsViewController;
@class MRMapsInteractor;
@class MRMapsPresenter;
@class MRMapsRouter;

/**
 @author Konstantin Kusainov

 Extension, который делает приватные методы фабрики открытыми для тестирования. 
 */
@interface MRMapsAssembly ()

- (MRMapsViewController *)viewMaps;
- (MRMapsPresenter *)presenterMaps;
- (MRMapsInteractor *)interactorMaps;
- (MRMapsRouter *)routerMaps;

@end
