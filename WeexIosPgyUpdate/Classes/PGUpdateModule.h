//
//  PGUpdateModule.h
//  Pods
//
//  Created by star diao on 16/12/2018.
//

#ifndef PGUpdateModule_h
#define PGUpdateModule_h


#endif /* PGUpdateModule_h */

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>

@protocol PGUpdatePro <WXModuleProtocol>

- (void)checkUpdate:(NSString *)appId :(WXModuleCallback)callback;

@end

@interface PGUpdateModule : NSObject<PGUpdatePro>

@end
