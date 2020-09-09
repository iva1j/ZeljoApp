import 'dart:async';
import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/SplashScreenPage/widgets/splashPage.dart';
import 'package:ZeljoApp/view/UserAuthPage/pages/userAuth.dart';
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
            MaterialPageRoute(builder: (BuildContext context) => UserAuth())));
    return Scaffold(
      backgroundColor: bluebg,
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        child: SplashPage(),
      ),
    );
  }
}
