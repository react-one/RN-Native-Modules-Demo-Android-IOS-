//
//  ReactOneCustomMethod.m
//  RNNativeModulesDemo
//
//  Created by user203789 on 10/8/21.
//
#import <React/RCTLog.h>
#import "RCTReactOneCustomMethod.h"

@implementation RCTReactOneCustomMethod

// To export a module named RCTCalendarModule
RCT_EXPORT_MODULE();

//RCT_EXPORT_METHOD(getPhoneID)
//{
// RCTLogInfo(@"Pretending to create an event");
//}
RCT_EXPORT_METHOD(getPhoneID:(RCTPromiseResolveBlock)resolve :(RCTPromiseRejectBlock)reject)
{
//  NSUUID *thingToReturn = [[UIDevice currentDevice] identifierForVendor];
  NSString *thingToReturn = [[UIDevice currentDevice] name];
  resolve(thingToReturn);
}
@end
