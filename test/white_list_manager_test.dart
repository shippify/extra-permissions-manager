import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:white_list_manager/white_list_manager.dart';

void main() {
  const MethodChannel channel = MethodChannel('white_list_manager');

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
    expect(await WhiteListManager.platformVersion, '42');
  });
}
