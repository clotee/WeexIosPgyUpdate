//
//  PGUpdate.h
//  Pods
//
//  Created by star diao on 16/12/2018.
//

#ifndef PGUpdate_h
#define PGUpdate_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <PgyUpdate/PgyUpdateManager.h>
#import <PgySDK/PgyManager.h>

@interface PGUpdate : NSObject

@property (nonatomic, strong) NSString *appId;

typedef void (^PGUpdateCallback)(id error, id result);

+ (PGUpdate *)singletonManger;

- (void)checkUpdate:(NSString *)appId :(PGUpdateCallback)callback;

@end


#endif /* PGUpdate_h */

