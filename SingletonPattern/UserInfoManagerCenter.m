//
//  UserInfoManagerCenter.m
//  SingletonPattern
//
//  Created by YouXianMing on 15/9/29.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "UserInfoManagerCenter.h"

static UserInfoManagerCenter *center = nil;

@implementation UserInfoManagerCenter

+ (instancetype)managerCenter {
    
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
    
        center = (UserInfoManagerCenter *)@"UserInfoManagerCenter";
        center = [[UserInfoManagerCenter alloc] init];
    });
    
    // 防止子类使用
    NSString *classString = NSStringFromClass([self class]);
    if ([classString isEqualToString:@"UserInfoManagerCenter"] == NO) {
        
        NSParameterAssert(nil);
    }
    
    return center;
}

- (instancetype)init {
    
    NSString *string = (NSString *)center;
    if ([string isKindOfClass:[NSString class]] == YES && [string isEqualToString:@"UserInfoManagerCenter"]) {
        
        self = [super init];
        if (self) {
            
            // 防止子类使用
            NSString *classString = NSStringFromClass([self class]);
            if ([classString isEqualToString:@"UserInfoManagerCenter"] == NO) {
                
                NSParameterAssert(nil);
            }
        }
        
        return self;
        
    } else {
    
        return nil;
    }
}

@end
