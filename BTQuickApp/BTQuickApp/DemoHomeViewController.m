//
//  DemoHomeViewController.m
//  BTQuickApp
//
//  Created by prodapt IT on 11/17/16.
//  Copyright © 2016 Balram. All rights reserved.
//

#import "DemoHomeViewController.h"

@interface DemoHomeViewController ()

@end

@implementation DemoHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass([self class]);
    
    UIImageView *bgView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Icon-Original"]];
    bgView.frame = CGRectMake(0, 0, 250, 250);
    [self.view addSubview:bgView];
    bgView.center = self.view.center;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menuIcon"]
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(performOpenMenu)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)performOpenMenu{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"OPEN_SIDE_MENU" object:nil];
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
