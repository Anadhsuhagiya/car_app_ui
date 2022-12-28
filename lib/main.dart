import 'package:car_app_ui/Login.dart';
import 'package:car_app_ui/home.dart';
import 'package:flutter/material.dart';

import 'Registration.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Registration(),
    theme: ThemeData(fontFamily: 'arial'),
  ));
}
