import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/viewModel/loginViewModel.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            color: Colors.orange[700],
            onPressed: () async {
              await onPressedButtonLogin(context);
            },
            child: Text(login, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
