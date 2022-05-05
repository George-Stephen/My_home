// @dart=2.9
import 'package:flutter/material.dart';
import 'package:my_home/screens/apartmentDetail.dart';
import 'package:my_home/screens/forgotPassword.dart';
import 'package:my_home/screens/splashscreen.dart';
import 'package:flutter/services.dart';
import 'package:my_home/screens/main/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'My home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff1F1F2C),
        fontFamily: 'LeonSans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}





