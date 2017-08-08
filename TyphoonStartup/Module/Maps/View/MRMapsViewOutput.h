//
//  MRMapsViewOutput.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MRMapsViewOutput <NSObject>

/**
 @author Konstantin Kusainov

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end
