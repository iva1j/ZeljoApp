import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/utils/shared/splashLogo.dart';
import 'package:ZeljoApp/view/SplashScreenPage/widgets/splashText.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: greyrectangle,
                ),
                width: 113,
                height: 113,
              ),
              SplashLogo(),
            ],
          ),
        ),
        SplashText(),
      ],
    );
  }
}
