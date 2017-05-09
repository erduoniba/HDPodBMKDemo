//
//  RootViewController.m
//  HDPodBMKDemo
//
//  Created by denglibing on 2017/5/9.
//  Copyright © 2017年 邓立兵. All rights reserved.
//

#import "RootViewController.h"

#import "ViewController.h"

#import <HDPodBMKSDK/HDBMKPodViewController.h>


@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)hostPresent:(id)sender {
    [self presentViewController:ViewController.new animated:YES completion:Nil];
}

- (IBAction)podPresent:(id)sender {
    [self presentViewController:HDBMKPodViewController.new animated:YES completion:Nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
