import UIKit
import Flutter

class DeviceInfo: NSObject {
    static func getDeviceInfo() -> [String: Any] {
        let device = UIDevice.current
        return [
            "modelName": device.model,
            "systemVersion": device.systemVersion,
            "name": device.name,
            "isBatteryMonitoringEnabled": device.isBatteryMonitoringEnabled,
        ]
    }
}

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let controller = window?.rootViewController as! FlutterViewController
        let deviceInfoChannel = FlutterMethodChannel(name: "com.example/device_info", binaryMessenger: controller.binaryMessenger)

        deviceInfoChannel.setMethodCallHandler { (call, result) in
            if call.method == "getDeviceInfo" {
                let deviceInfo = DeviceInfo.getDeviceInfo()
                result(deviceInfo)
            } else {
                result(FlutterMethodNotImplemented)
            }
        }
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
