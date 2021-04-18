import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list_provider/screens/home/home_screen.dart';

void main() => runApp(DevicePreview(
  enabled: !kReleaseMode,
  builder: (context) => MyApp(), // Wrap your app
),);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Only for Mobile
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        builder: DevicePreview.appBuilder,
        theme:ThemeData(
          primaryColor: Colors.cyanAccent
        ),
        home: HomeScreen());
  }
}

