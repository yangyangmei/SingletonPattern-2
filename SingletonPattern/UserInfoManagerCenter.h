//
//  UserInfoManagerCenter.h
//  SingletonPattern
//
//  Created by YouXianMing on 15/9/29.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfoManagerCenter : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;

+ (instancetype)managerCenter;

@end
