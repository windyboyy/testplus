#import "Test1Plugin.h"
#if __has_include(<test1/test1-Swift.h>)
#import <test1/test1-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "test1-Swift.h"
#endif

@implementation Test1Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTest1Plugin registerWithRegistrar:registrar];
}
@end
