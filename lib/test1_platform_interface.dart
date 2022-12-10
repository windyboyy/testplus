import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test1_method_channel.dart';

abstract class Test1Platform extends PlatformInterface {
  /// Constructs a Test1Platform.
  Test1Platform() : super(token: _token);

  static final Object _token = Object();

  static Test1Platform _instance = MethodChannelTest1();

  /// The default instance of [Test1Platform] to use.
  ///
  /// Defaults to [MethodChannelTest1].
  static Test1Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Test1Platform] when
  /// they register themselves.
  static set instance(Test1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getPing() {
    throw UnimplementedError('getPing() has not been implemented.');
  }
}
