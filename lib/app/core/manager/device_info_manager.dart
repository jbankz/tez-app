import 'package:flutter/services.dart';

class DeviceInfoManager {
  static const MethodChannel _channel =
      MethodChannel('com.example/device_info');

  static Future<Map<String, dynamic>> getDeviceInfo() async {
    final Map<dynamic, dynamic> deviceInfo =
        await _channel.invokeMethod('getDeviceInfo');
    return Map<String, dynamic>.from(deviceInfo);
  }
}
