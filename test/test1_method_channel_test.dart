import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test1/test1_method_channel.dart';

void main() {
  MethodChannelTest1 platform = MethodChannelTest1();
  const MethodChannel channel = MethodChannel('test1');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
