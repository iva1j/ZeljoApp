import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/view/LoginPage/pages/login.dart';
import 'package:flutter/material.dart';

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton.icon(
        color: Colors.white,
        icon: Icon(
          Icons.email,
          color: Colors.grey[600],
        ),
        label: Text(emailLogin),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              FadeRoute(page: Login()), (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
