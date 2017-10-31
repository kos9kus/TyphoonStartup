//
//  MRInfoModuleInput.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ViperMcFlurry/ViperMcFlurry.h>

@protocol MRInfoModuleInput <RamblerViperModuleInput>

/**
 @author Konstantin Kusainov

 Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end
