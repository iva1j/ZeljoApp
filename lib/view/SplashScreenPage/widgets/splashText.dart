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
            "ŽELJO DOSTAVA",
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
