//
//  LeftViewController.h
//  LGSideMenuControllerDemo
//
//  Created by Grigory Lutkov on 18.02.15.
//  Copyright (c) 2015 Grigory Lutkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftViewController : UIViewController

@property (strong, nonatomic) UIColor *tintColor;
@property (strong, nonatomic) UITableView *tableView;
@property (nonatomic, strong) NSArray *sideMenuData;
@property (nonatomic, strong) NSArray *titlesArray;
@end

