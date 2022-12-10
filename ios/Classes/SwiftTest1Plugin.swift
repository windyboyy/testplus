import Flutter
import UIKit
import Greeting
import Itangosdk

public class SwiftTest1Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "test1", binaryMessenger: registrar.messenger())
    let instance = SwiftTest1Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
//     var p = Itangosdk.ItangosdkInvoke
    result(ItangosdkInvoke().ping("{\"TargetHost\": \"8.8.8.8\" }"))
  }
}
