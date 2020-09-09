import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:flutter/material.dart';

class SplashText extends StatelessWidget {
  const SplashText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 180),
          child: Text(
            zeljoDostava,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'FjallaOne',
            ),
          ),
        ),
      ],
    );
  }
}
