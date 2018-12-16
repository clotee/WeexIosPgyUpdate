//
//  PGUpdateModule.m
//  Kiwi
//
//  Created by star diao on 16/12/2018.
//

#import "PGUpdateModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import "PGUpdate.h"

@implementation PGUpdateModule

@synthesize weexInstance;

WX_PlUGIN_EXPORT_MODULE(pgupdate, PGUpdateModule)
WX_EXPORT_METHOD(@selector(checkUpdate::))

//- (void)init:(NSString *)appId :(WXModuleCallback)callback{
//    //启动基本SDK
//    [[PgyManager sharedPgyManager] startManagerWithAppId:appId];
//}

-(void)checkUpdate:(NSString *)appId :(WXModuleCallback)callback{
    [[PGUpdate sharedPgyManager] checkUpdate:appId :^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }
    }];
}

@end
