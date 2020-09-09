import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/viewModel/googleSignInViewModel.dart';
import 'package:flutter/material.dart';

class ProfileUserName extends StatelessWidget {
  const ProfileUserName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style:
          TextStyle(fontSize: 25, color: mainblue, fontWeight: FontWeight.bold),
    );
  }
}
