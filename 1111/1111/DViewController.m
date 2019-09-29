//
//  DViewController.m
//  1111
//
//  Created by Jaya Shen on 2019/9/28.
//  Copyright © 2019 Jaya Shen. All rights reserved.
//

#import "DViewController.h"
#import "AViewController.h"

@interface DViewController ()

@end

@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor blueColor];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake( 137.5, 356, 100, 100);
    [btn setTitle:@"D" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blackColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(turnToGame) forControlEvents:UIControlEventTouchUpInside];
}

- (void)turnToGame {
    [[NSNotificationCenter  defaultCenter]postNotificationName:@"back to A" object:nil];  
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
//    NSLog(@"%@",self.navigationController.viewControllers);
//    [self.navigationController popToRootViewControllerAnimated:YES];
//    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
//    [self.navigationController popToViewController:self.navigationController.viewControllers[1] animated:YES];
//    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)dealloc {
    NSLog(@"DViewController dealloc");
}
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"DViewController viewWillAppear");
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
