import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class AuthWelcomeText extends StatelessWidget {
  const AuthWelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 10,
          bottom: SizeConfig.blockSizeVertical * 6),
      child: Text(
        welcomeText,
        style: TextStyle(fontSize: 19),
      ),
    );
  }
}
