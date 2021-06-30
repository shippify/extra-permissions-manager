import 'dart:async';

import 'package:flutter/services.dart';

class ExtraPermissionsManager {
  static const MethodChannel _channel =
      const MethodChannel('extra_permissions_manager');

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
