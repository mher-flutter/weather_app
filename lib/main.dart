import 'package:flutter/material.dart';
import 'package:weather_app/screens/loading_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';
import 'dart:io' show Platform;

void main() {
  runApp(WeatherApp());
  setStatusBarDarkMode();
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoadingScreen());
  }
}

void setStatusBarDarkMode() async {
  if (Platform.isIOS) {
    FlutterStatusbarTextColor.setTextColor(FlutterStatusbarTextColor.dark);
  } else {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
}