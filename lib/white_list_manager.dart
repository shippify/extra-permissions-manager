
import 'dart:async';

import 'package:flutter/services.dart';

class WhiteListManager {
  static const MethodChannel _channel =
      const MethodChannel('white_list_manager');

  static Future<String> requestBackgroundPermissionToWhiteList({String package}) async {
    final String result = await _channel.invokeMethod('addToWhiteList',
      {
        'package': package
      }
    );
    return result;
  }

  static Future<int> getElapsedTime() async {
    final int result = await _channel.invokeMethod('getElapsedTime');
    return result;
  }
}
