//
//  BTQuickAppController.h
//  BTQuickApp
//
//  Created by prodapt IT on 11/17/16.
//  Copyright © 2016 Balram. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BTQuickAppConstant.h"

@interface BTQuickAppController : UIViewController

-(LGSideMenuController *)createAppWithSideMenuItemsTitle:(NSArray *)titles
                                    andSideMenuItemClass:(NSArray *)itemClass
                                           andHomeScreen:(NSString *)className;

@end
