//
//  ViewController.m
//  HDPodBMKDemo
//
//  Created by 邓立兵 on 2017/5/3.
//  Copyright © 2017年 邓立兵. All rights reserved.
//

#import "ViewController.h"

#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import <HDPodBMKSDK/HDBMKPodViewController.h>

@interface ViewController () <BMKMapViewDelegate>

@property (weak, nonatomic) IBOutlet BMKMapView *baiduMapView;

@end

@implementation ViewController

- (IBAction)presentToPodVC:(id)sender {
    [self presentViewController:HDBMKPodViewController.new animated:YES completion:Nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主工程的百度地图";
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.baiduMapView viewWillAppear];
    self.baiduMapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.baiduMapView viewWillDisappear];
    self.baiduMapView.delegate = nil; // 不用时，置nil
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
