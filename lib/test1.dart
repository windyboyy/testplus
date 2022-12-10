
import 'test1_platform_interface.dart';

class Test1 {
  Future<String?> getPlatformVersion() {
    return Test1Platform.instance.getPlatformVersion();
  }

  Future<String?> getPing() {
    return Test1Platform.instance.getPing();
  }
}
