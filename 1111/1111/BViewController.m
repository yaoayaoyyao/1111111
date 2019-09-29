//
//  BViewController.m
//  1111
//
//  Created by Jaya Shen on 2019/9/28.
//  Copyright © 2019 Jaya Shen. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake( 137.5, 356, 100, 100);
    [btn setTitle:@"B" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pushToNextView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushToNextView {
    CViewController *cViewController = [[CViewController alloc]init];
    [self presentViewController:cViewController animated:YES completion:nil];
    
    
//    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:cViewController];
//    [self presentViewController:nav animated:YES completion:nil];
//    [self.navigationController pushViewController:cViewController animated:YES];
}

- (void)dealloc {
    NSLog(@"BViewController dealloc");
    
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"BViewController viewWillAppear");
//    NSLog(@"BViewController presented--------%@", self.presentedViewController);
//    NSLog(@"BViewController presenting--------%@", self.presentingViewController);
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
