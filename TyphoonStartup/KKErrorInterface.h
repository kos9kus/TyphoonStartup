//
//  KKErrorInterface.h
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#ifndef KKErrorInterface_h
#define KKErrorInterface_h

@protocol KKErrorInterface <NSObject>

- (void)handleError:(NSError *)error;

@end

#endif /* KKErrorInterface_h */
