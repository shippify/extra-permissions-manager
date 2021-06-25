import 'dart:async';

import 'package:flutter/services.dart';

class WhiteList {
  static const MethodChannel _channel =
      const MethodChannel('android_autostart');

  static Future<String> get addToWhiteList async {
    try {
      final String result =
          await _channel.invokeMethod('navigateAutoStartSetting');
      return result;
    } catch (e) {
      return e.toString();
    }
  }

  static Future<String> customSetComponent(
      {String manufacturer, String pkg, String cls}) async {
    try {
      String result = await _channel.invokeMethod(
          'customSetComponent', <String, dynamic>{
        "manufacturer": manufacturer,
        "pkg": pkg,
        "cls": cls
      });
      return result;
    } on PlatformException catch (e) {
      return e.toString();
    }
  }
}
