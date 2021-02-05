#import "HasNotch.h"
#import <React/RCTLog.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface HasNotch()
@end

@implementation HasNotch

RCT_EXPORT_MODULE(HasNotch)

RCT_EXPORT_METHOD(hasNotch){
  dispatch_sync(dispatch_get_main_queue(), ^{
//    [self hasTopNocth];
  });
}

-(NSDictionary *)constantsToExport{
  if (@available( iOS 11.0, * )) {
      if ([[[UIApplication sharedApplication] keyWindow] safeAreaInsets].bottom > 0) {
        return @{ @"hasNotch": @YES };
      } else {
        return @{ @"hasNotch": @NO };
      }
  } else {
    return @{ @"hasNotch": @NO };
  }
  
}

@end

