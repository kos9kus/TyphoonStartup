//
//  MRRootViewControllerViewOutput.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MRRootViewControllerViewOutput <NSObject>

/**
 @author Konstantin Kusainov

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;
- (void)didButtonEvent;

@end
