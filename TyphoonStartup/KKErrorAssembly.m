//
//  KKErrorAssembly.m
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import "KKErrorAssembly.h"
#import "KKErrorObject.h"

@implementation KKErrorAssembly

- (id<KKErrorInterface>)errorHandleObject
{
    return [TyphoonDefinition withClass:[KKErrorObject class]];
}

@end
