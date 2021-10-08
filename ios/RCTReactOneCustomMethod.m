//
//  ReactOneCustomMethod.m
//  RNNativeModulesDemo
//
//  Created by user203789 on 10/8/21.
//
#import <React/RCTLog.h>
#import "RCTReactOneCustomMethod.h"

@implementation RCTReactOneCustomMethod

// To export a module named ReactOneCustomMethod
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getPhoneID:(RCTPromiseResolveBlock)resolve :(RCTPromiseRejectBlock)reject)
{
//  NSUUID *deviceID = [[UIDevice currentDevice] identifierForVendor];
  NSString *deviceName = [[UIDevice currentDevice] name];
  resolve(deviceName);
}
@end
