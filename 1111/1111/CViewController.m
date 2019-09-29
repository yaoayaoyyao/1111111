//
//  CViewController.m
//  1111
//
//  Created by Jaya Shen on 2019/9/28.
//  Copyright © 2019 Jaya Shen. All rights reserved.
//

#import "CViewController.h"
#import "DViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake( 137.5, 356, 100, 100);
    [btn setTitle:@"C" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pushToNextView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushToNextView {
    DViewController *dViewController = [[DViewController alloc]init];
    [self presentViewController:dViewController animated:YES completion:nil];
//    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:dViewController];
//    [self presentViewController:nav animated:YES completion:nil];
//    [self.navigationController pushViewController:dViewController animated:YES];
    
//    [[NSNotificationCenter  defaultCenter]postNotificationName:@"back to A" object:nil];
//    [UIApplication sharedApplication].delegate.window.rootViewController = dViewController;
}

- (void)dealloc {
    NSLog(@"CViewController dealloc");
}
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"CViewController viewWillAppear");
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
