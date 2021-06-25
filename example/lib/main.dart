import 'package:flutter/material.dart';
import 'package:android_autostart/android_autostart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Enable AutoStart Example App'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                onPressed: () async => await AndroidAutostart.navigateAutoStartSetting,
                child: Text("Navigate AutoStart Setting"),
              ),
              RaisedButton(
                onPressed: () async => await AndroidAutostart.customSetComponent(
                  manufacturer: "xiaomi",
                  pkg: "com.miui.securitycenter",
                  cls:
                      "com.miui.permcenter.autostart.AutoStartManagementActivity",
                ),
                child: Text("Custom Set Component"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
