import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/RegisterPage/pages/register.dart';
import 'package:flutter/material.dart';

class LoginToggleButton extends StatelessWidget {
  const LoginToggleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushAndRemoveUntil(
          FadeRoute(page: Register()), (Route<dynamic> route) => false),
      child: Container(
        margin: EdgeInsets.only(
            right: SizeConfig.blockSizeHorizontal * 6,
            top: SizeConfig.blockSizeVertical * 2),
        child: Text(
          reg,
          style:
              TextStyle(color: Colors.orange[500], fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
