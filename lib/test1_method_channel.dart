import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'test1_platform_interface.dart';

/// An implementation of [Test1Platform] that uses method channels.
class MethodChannelTest1 extends Test1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('test1');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getPing() async {
    final version = await methodChannel.invokeMethod<String>('getPing');
    return version;
  }
}
