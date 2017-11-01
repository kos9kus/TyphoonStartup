//
//  MRRootViewControllerRouter.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerRouter.h"

@implementation MRRootViewControllerRouter

#pragma mark - Методы MRRootViewControllerRouterInput

- (void)pushInfoViewController
{
    MRInfoViewController *vc = [self.infoAssembly viewInfo];
    [self.view.navigationController pushViewController:vc animated:YES];
}

@end
