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

@property (nonatomic,strong) BMKMapView *mapView;

@end

@implementation ViewController

- (BMKMapView *)mapView {
    if(_mapView == nil) {
        _mapView = [[BMKMapView alloc]initWithFrame:CGRectZero];
        [self.view addSubview:_mapView];
    }
    return _mapView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主工程的百度地图";

//    BMKMapManager* _mapManager = [[BMKMapManager alloc]init];
//    // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
//    // qbfQUpMvsAkqgwFZL8YVy89dK9ZXZE3h 对应的Bundle Identifier为 com.harry.HDBaiduMapDemo
//    BOOL ret = [_mapManager start:@"qbfQUpMvsAkqgwFZL8YVy89dK9ZXZE3h"  generalDelegate:nil];
//    if (!ret) {
//        NSLog(@"manager start failed!");
//    }

    self.view.backgroundColor = [UIColor grayColor];

    self.mapView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);

    UIButton *bt = [UIButton buttonWithType:UIButtonTypeInfoLight];
    bt.frame = CGRectMake(self.view.frame.size.width - 80, self.view.frame.size.height - 80, 40, 40);
    [bt addTarget:self action:@selector(dismissToMasterVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
}

- (void)dismissToMasterVC {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.mapView viewWillAppear];
    self.mapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.mapView viewWillDisappear];
    self.mapView.delegate = nil; // 不用时，置nil
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
