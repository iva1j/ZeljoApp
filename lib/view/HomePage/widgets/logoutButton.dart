import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/view/UserAuthPage/pages/userAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
        await FirebaseAuth.instance.signOut();

        Navigator.of(context).pushAndRemoveUntil(
            FadeRoute(page: UserAuth()), (Route<dynamic> route) => false);
      },
      icon: Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
    );
  }
}
