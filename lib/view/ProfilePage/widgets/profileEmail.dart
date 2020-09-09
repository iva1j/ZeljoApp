import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/viewModel/googleSignInViewModel.dart';
import 'package:flutter/material.dart';

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      style: TextStyle(fontSize: 15, color: mainblue),
    );
  }
}
