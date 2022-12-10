import 'package:flutter_test/flutter_test.dart';
import 'package:test1/test1.dart';
import 'package:test1/test1_platform_interface.dart';
import 'package:test1/test1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTest1Platform
    with MockPlatformInterfaceMixin
    implements Test1Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Test1Platform initialPlatform = Test1Platform.instance;

  test('$MethodChannelTest1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTest1>());
  });

  test('getPlatformVersion', () async {
    Test1 test1Plugin = Test1();
    MockTest1Platform fakePlatform = MockTest1Platform();
    Test1Platform.instance = fakePlatform;

    expect(await test1Plugin.getPlatformVersion(), '42');
  });
}
