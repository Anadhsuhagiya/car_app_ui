import 'package:car_app_ui/Login.dart';
import 'package:car_app_ui/home.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Registration.dart';

void main() {
  runApp(
    MaterialApp(home: Home(),),
  );
}

// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => Home(), // Wrap your app
//   ),
// );
