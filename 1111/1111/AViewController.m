//
//  AViewController.m
//  1111
//
//  Created by Jaya Shen on 2019/9/28.
//  Copyright © 2019 Jaya Shen. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
#import "DViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake( 137.5, 356, 100, 100);
    [btn setTitle:@"A" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pushToNextView) forControlEvents:UIControlEventTouchUpInside];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backA) name:@"back to A" object:nil];
}

- (void)pushToNextView {
    BViewController *bViewController = [[BViewController alloc]init];
    [self presentViewController:bViewController animated:YES completion:nil];
    
    
//    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:bViewController];
//    [self presentViewController:nav animated:YES completion:nil];
//    [self.navigationController pushViewController:bViewController animated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"AViewController viewWillAppear");
    
//    NSLog(@"AViewController presented--------%@", self.presentedViewController);
//    NSLog(@"AViewController presentingViewController--------%@", self.presentingViewController);
}

- (void)dealloc {
    NSLog(@"AViewController dealloc");
}

-(void)backA {
    [self dismissViewControllerAnimated:YES completion:^{
//        DViewController *dViewController = [[DViewController alloc]init];
//        [UIApplication sharedApplication].delegate.window.rootViewController = dViewController;
    }];
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
