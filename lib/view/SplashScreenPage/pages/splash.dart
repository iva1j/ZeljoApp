import 'dart:async';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/RegisterPage/pages/register.dart';
import 'package:ZeljoApp/view/SplashScreenPage/widgets/splashPage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Register())));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 113, 163),
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        child: SplashPage(),
      ),
    );
  }
}
