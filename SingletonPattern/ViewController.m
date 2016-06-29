//
//  ViewController.m
//  SingletonPattern
//
//  Created by YouXianMing on 15/9/29.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "UserInfoManagerCenter.h"
#import "NewManagerCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UserInfoManagerCenter *center = [UserInfoManagerCenter managerCenter];
    NSLog(@"%@", center.name);
    
//    [NewManagerCenter managerCenter];
    
    NSLog(@"%@", [UserInfoManagerCenter managerCenter]);
    NSLog(@"%@", [[UserInfoManagerCenter alloc] init]);
}

@end
