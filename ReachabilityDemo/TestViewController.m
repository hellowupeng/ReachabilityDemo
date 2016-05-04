//
//  TestViewController.m
//  ReachabilityDemo
//
//  Created by gaiaworks on 16/5/4.
//  Copyright © 2016年 gaiaworks. All rights reserved.
//

#import "TestViewController.h"
#import "Reachability.h"

@interface TestViewController ()

@end

@implementation TestViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [TestViewController isExistenceNetwork];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CheckNetworkStatus

/***
 * 此函数用来判断是否网络连接服务器正常
 */
+ (BOOL)isExistenceNetwork
{
    BOOL isExistenceNetwork;
    Reachability *reachability = [Reachability reachabilityWithHostName:@"gaiaworks.hrone.cn"];  // 测试服务器状态
    
    switch([reachability currentReachabilityStatus]) {
        case NotReachable:
            isExistenceNetwork = FALSE;
            NSLog(@"网络连接失败");
            break;
        case ReachableViaWWAN:
            isExistenceNetwork = TRUE;
            NSLog(@"网络连接成功");
            break;
        case ReachableViaWiFi:
            isExistenceNetwork = TRUE;
            NSLog(@"网络连接成功");
            break;
    }
    return  isExistenceNetwork;
}

@end
