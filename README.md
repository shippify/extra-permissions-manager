# Android AutoStart

This is an AutoStart library for flutter.
You can request to enable AutoStart with Android AutoStart.
Many Developers need to access AutoStart Setting in Flutter including me, but there's no good plugin yet for autostart.So I decided to make AutoStart Plugin for Developers.


## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

For help on editing plugin code, view the [documentation](https://flutter.io/platform-plugins/#edit-code).

## Installation and Usage

Add `extra_permissions_manager` to the dependencies list
of the `pubspec.yaml` file as follow:

```yaml
dependencies:
  flutter:
    sdk: flutter

  extra_permissions_manager: ^0.0.2
```

Then run the command `flutter packages get` on the console.

Import

```dart
import 'package:extra_permissions_manager/extra_permissions_manager.dart';
```

Navigate to AutoStart Setting.

navigateAutoStartSetting Supported Manufactures:
    - Xiaomi
    - Oppo
    - Vivo
    - Letv
    - Honor

```dart
     await ExtraPermissionsManager.navigateAutoStartSetting;
```

You can use CustomSetComponent.

```dart
     await ExtraPermissionsManager.customSetComponent(
                  manufacturer: "xiaomi",
                  pkg: "com.miui.securitycenter",
                  cls:
                      "com.miui.permcenter.autostart.AutoStartManagementActivity",
                 );
```

### Created by
[Shine Wanna](https://github.com/shinewanna)
