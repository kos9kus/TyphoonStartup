//
//  MRInfoViewOutput.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MRInfoViewOutput <NSObject>

/**
 @author Konstantin Kusainov

 Метод сообщает презентеру о том, что view готова к работе
 */
- (void)didTriggerViewReadyEvent;

@end
