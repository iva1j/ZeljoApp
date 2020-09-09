import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 250, child: GoogleSignInButton(onPressed: () {}));
  }
}
