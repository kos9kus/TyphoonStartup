//
//  MRMapsViewInput.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MRMapsViewInput <NSObject>

/**
 @author Konstantin Kusainov

 Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

@end
