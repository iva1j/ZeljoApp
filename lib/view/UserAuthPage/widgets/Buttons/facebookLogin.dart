import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class FBLoginButton extends StatelessWidget {
  const FBLoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FacebookSignInButton(onPressed: () {});
  }
}
