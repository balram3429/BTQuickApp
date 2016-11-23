//
//  BTQuickAppController.m
//  BTQuickApp
//
//  Created by prodapt IT on 11/17/16.
//  Copyright © 2016 Balram. All rights reserved.
//

#import "BTQuickAppController.h"

@interface BTQuickAppController ()
@property(nonatomic,strong) UINavigationController *rootController;
@property(nonatomic, strong) LGSideMenuController *sideMenuController;

@end

@implementation BTQuickAppController

-(id)init{
    self = [super init];
    if(self){
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(LGSideMenuController *)createAppWithSideMenuItemsTitle:(NSArray *)titles
                                    andSideMenuItemClass:(NSArray *)itemClass
                                           andHomeScreen:(NSString *)className
{
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:0.925 green:0.123 blue:0.18 alpha:1] ];
    LeftViewController *sideMenu = [LeftViewController new];
    [sideMenu setSideMenuData:itemClass];
    [sideMenu setTitlesArray:titles];
    
    self.rootController = [[UINavigationController alloc] initWithRootViewController:[[NSClassFromString(className) alloc] init]];
    self.sideMenuController = [[LGSideMenuController alloc]init];
    [self.sideMenuController setRootViewController:self.rootController];
    [self.sideMenuController setLeftViewEnabledWithWidth:250.f
                                       presentationStyle:LGSideMenuPresentationStyleSlideBelow
                                    alwaysVisibleOptions:0];
    
    self.sideMenuController.customLeftController = sideMenu;
    [self.sideMenuController.leftView addSubview:self.sideMenuController.customLeftController.view];
    [self.sideMenuController.customLeftController.tableView reloadData];

    return _sideMenuController;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
