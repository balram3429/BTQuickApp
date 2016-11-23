//
//  LeftViewController.m
//  LGSideMenuControllerDemo
//
//  Created by Grigory Lutkov on 18.02.15.
//  Copyright (c) 2015 Grigory Lutkov. All rights reserved.
//

#import "LeftViewController.h"
#import "BTQuickAppConstant.h"
#import "LeftViewCell.h"
#import "LGSideMenuController.h"

@interface LeftViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation LeftViewController

-(instancetype)init{
    self = [super init];
    
    if(self){
        self.view.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
        self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 250, self.view.bounds.size.height) style:UITableViewStylePlain];
        [self.view addSubview:self.tableView];
        [self.tableView registerClass:[LeftViewCell class] forCellReuseIdentifier:@"cell"];
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.backgroundColor = [UIColor colorWithRed:0.925 green:0.123 blue:0.18 alpha:1];
        self.tableView.contentInset = UIEdgeInsetsMake(22.f, 0.f, 22.f, 0.f);
        self.tableView.showsVerticalScrollIndicator = NO;
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        
        UIImageView *logoImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogoIcon"]];
        logoImage.frame = CGRectMake(5, 0, 250, 67);
        self.tableView.tableHeaderView = logoImage;
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(openSideMenu) name:@"OPEN_SIDE_MENU" object:nil];
        
    }
    return self;
}

-(void)setSideMenuData:(NSArray *)sideMenuData {
    _sideMenuData= sideMenuData;
}

-(void)setTitlesArray:(NSArray *)titlesArray{
    NSMutableArray *tempArray = [NSMutableArray new];
    [tempArray addObject:@"Home"];
    [tempArray addObjectsFromArray:titlesArray];
    [tempArray addObject:@"Logout"];
    _titlesArray = [NSArray arrayWithArray:tempArray];
}


-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

#pragma mark - UITableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _titlesArray.count;
}

#pragma mark - UITableView Delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LeftViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.tintColor = [UIColor whiteColor];
    cell.imageView.image = [[UIImage imageNamed:_titlesArray[indexPath.row]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    cell.imageView.tintColor = [UIColor colorWithRed:30.0/255.0 green:40.0/255.0 blue:106.0/255.0 alpha:1];
    cell.imageView.layer.cornerRadius = cell.imageView.bounds.size.width/2;
    cell.textLabel.text = _titlesArray[indexPath.row];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 55.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Yes selected");
    
    if (indexPath.row == 0)
    {
        if (![kMainViewController isLeftViewAlwaysVisible])
        {
            [kMainViewController hideLeftViewAnimated:YES completionHandler:nil];
        }
        else [kMainViewController showRightViewAnimated:YES completionHandler:nil];
        
    }else {
        
        if([[_titlesArray objectAtIndex:indexPath.row] isEqualToString:@"Logout"]){
            [[NSNotificationCenter defaultCenter] postNotificationName:@"LOGOUT_USER" object:nil];
        }else {
            id obj = [[NSClassFromString([_sideMenuData objectAtIndex:indexPath.row-1]) alloc] init];
            [self setMenu:obj];
        }
    }
}

-(void)closeMenu{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"OPEN_SIDE_MENU" object:nil];
}

-(void)setMenu:(UIViewController *)ctrllr{
    
    [kNavigationController pushViewController:ctrllr animated:NO];
    [kMainViewController hideLeftViewAnimated:YES completionHandler:nil];
}

-(void)openSideMenu{
    if ([kMainViewController isLeftViewAlwaysVisible])
    {
        [kMainViewController hideLeftViewAnimated:YES completionHandler:^(void)
         {
             
         }];
    }else {
        [kMainViewController showLeftViewAnimated:YES completionHandler:nil];
    }
}

@end
