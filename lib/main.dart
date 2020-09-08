import 'package:ZeljoApp/view/LoginPage/pages/login.dart';
import 'package:ZeljoApp/view/RegisterPage/pages/register.dart';
import 'package:ZeljoApp/view/SplashScreenPage/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Željo App',
      home: Splash(),
    );
  }
}
