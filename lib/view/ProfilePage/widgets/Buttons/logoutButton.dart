import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/viewModel/loginViewModel.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({
    Key key,
  }) : super(key: key);

  @override
  _LogoutButtonState createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await onPressedLogoutButtonAll(context);
      },
      icon: Icon(
        Icons.exit_to_app,
        color: mainblue,
      ),
    );
  }
}
