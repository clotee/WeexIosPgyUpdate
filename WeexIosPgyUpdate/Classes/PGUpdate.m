//
//  PGUpdate.m
//  Kiwi
//
//  Created by star diao on 16/12/2018.
//

#import "PGUpdate.h"

@interface PGUpdate ()
@end

@implementation PGUpdate

+ (PGUpdate *)singletonManger{
    static id manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

+ (void)initPGAPI:(NSString *)appId {
    //启动基本SDK
    [[PgyManager sharedPgyManager] startManagerWithAppId:appId];
    //启动更新检查SDK
    [[PgyUpdateManager sharedPgyManager] startManagerWithAppId:appId];
}

- (void)checkUpdate:(NSString *)appId :(PGUpdateCallback)callback {
    [PGUpdate initPGAPI: appId];
    callback(nil, nil);
}

@end
