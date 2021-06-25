import 'dart:async';

import 'package:flutter/services.dart';

class ExtraPermissionManager {
  static const MethodChannel _channel =
      const MethodChannel('android_autostart');

  static Future<String> get addToWhiteList async {
    try {
      final String result =
          await _channel.invokeMethod('customSetComponent');
      return result;
    } catch (e) {
      return e.toString();
    }
  }

	
  static Future<String> get navigateAutoStartSetting async {
    try {
      final String result =
          await _channel.invokeMethod('navigateAutoStartSetting');
      return result;
    } catch (e) {
      return e.toString();
    }
  }

}
