//
//  BTQuickAppConstant.h
//  BTQuickApp
//
//  Created by prodapt IT on 11/17/16.
//  Copyright © 2016 Balram. All rights reserved.
//

#ifndef BTQuickAppConstant_h
#define BTQuickAppConstant_h

#import "LGSideMenuController.h"

#define kMainViewController (LGSideMenuController *)[UIApplication sharedApplication].delegate.window.rootViewController
#define kNavigationController (UINavigationController *)[(LGSideMenuController *)[UIApplication sharedApplication].delegate.window.rootViewController rootViewController]

#endif /* BTQuickAppConstant_h */
